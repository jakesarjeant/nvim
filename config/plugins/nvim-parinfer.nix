{ pkgs, ... }:
{
	extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
		name = "nvim-parinfer";
		src = pkgs.fetchFromGitHub {
			owner = "gpanders";
			repo = "nvim-parinfer";
			rev = "5ca0928";
			hash = "sha256-diwLtmch8LzaX7FIwBNy78n3iY7VnqMC1n0ep8k5kWE=";
		};
	})];
}
