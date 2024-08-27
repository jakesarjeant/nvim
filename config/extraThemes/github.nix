{pkgs, ...}:
{
	extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
		name = "github-nvim-theme";
		src = pkgs.fetchFromGitHub {
			owner = "projekt0n";
			repo = "github-nvim-theme";
			rev = "6b46163";
			hash = "sha256-GoJOeqbBm0b766aZtce/n1Kq2zwbQ4UKRv7qgBlgQE8=";
		};
	})];
}
