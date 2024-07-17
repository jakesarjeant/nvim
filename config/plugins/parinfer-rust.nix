{ pkgs, pkgs-unstable, ... }:
{
	plugins.parinfer-rust = {
		enable = false;
		package = pkgs-unstable.vimPlugins.parinfer-rust;
	};
}
