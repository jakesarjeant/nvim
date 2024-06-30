{
  description = "My neovim config";

  inputs.nixvim.url = "github:nix-community/nixvim";
  inputs.nixpkgs.url = "github:nixos/nixpkgs";

  outputs = {
    self,
    nixvim,
    flake-parts,
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
				};
      in {
        packages = {
          inherit nvim;
          default = nvim;
        };
      };
    };
}
