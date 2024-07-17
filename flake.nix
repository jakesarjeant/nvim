{
  description = "My neovim config";

  inputs.nixvim.url = "github:nix-community/nixvim";
  inputs.nixpkgs.url = "github:nixos/nixpkgs";
  inputs.nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-compat.url = "https://flakehub.com/f/edolstra/flake-compat/1.tar.gz";
  inputs.neorg-overlay.url = "github:nvim-neorg/nixpkgs-neorg-overlay";

  outputs = {
    self,
    nixvim,
    flake-parts,
		nixpkgs-unstable,
    ...
  } @ inputs:
		flake-parts.lib.mkFlake {inherit inputs;} {
      systems = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];

      perSystem = {
        pkgs,
        system,
        ...
      }: let
        nixvim' = nixvim.legacyPackages."${system}";
        nvim = nixvim'.makeNixvimWithModule {
					inherit pkgs;
					module = ./config;
					extraSpecialArgs = {
						pkgs-unstable = import inputs.nixpkgs-unstable {
							inherit system;
						};
					};
				};
      in {
				_module.args.pkgs = import inputs.nixpkgs {
					inherit system;
					overlays = [
						inputs.neorg-overlay.overlays.default
					];
				};
        packages = {
          inherit nvim;
          default = nvim;
        };
      };
    };
}
