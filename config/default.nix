{ lib, ... }:

# https://github.com/evanjs/nixos_cfg/blob/4bb5b0b84a221b25cf50853c12b9f66f0cad3ea4/config/new-modules/default.nix#L1
with lib;
let
  # Recursively constructs an attrset of a given folder, recursing on directories, value of attrs is the filetype
  getDir = dir: mapAttrs
    (file: type:
      if type == "directory" then getDir "${dir}/${file}" else type)
    (builtins.readDir dir);

  # Collects all files of a directory as a list of strings of paths
  files = dir: collect isString (mapAttrsRecursive (path: type: concatStringsSep "/" path) (getDir dir));

  # Filters out directories that don't end with .nix or are this file, also makes the strings absolute
  validFiles = dir: map
    (file: ./. + "/${file}")
    (filter
      (file: hasSuffix ".nix" file && file != "default.nix" &&
        ! lib.hasPrefix "x/taffybar/" file &&
        ! lib.hasSuffix "-hm.nix" file)
      (files dir));
in {
	imports = validFiles ./.;

  colorschemes.oxocarbon.enable = true;
  colorschemes.ayu.enable = true;
	clipboard.providers.wl-copy.enable = true;
  opts = {
	  relativenumber = true;
	  shiftwidth = 2;
	  tabstop = 2;
		timeout = true;
		timeoutlen = 300;
		signcolumn = "number";
  };
	globals = {
		mapleader = " ";
	};
	extraConfigVim = "set clipboard+=unnamedplus";
	autoCmd = [
    {
      command = "hi Normal guibg=None ctermbg=None";
      event = ["VimEnter"];
      pattern = ["*"];
    }
	];
	highlightOverride = let
		transparent = {
			# Comment out the following two lines to disable transparent bg:
			bg = "None";
			ctermbg = "None";
		};
	in {
		Normal = transparent;
		NormalNC = transparent;
		NonText = transparent;
		SignColumn = transparent;
		FoldCoumn = transparent;
		LineNr = transparent;
		CursorLine = transparent;
		CursorLineNr = transparent;
		StatusLine = transparent;
	};
}
