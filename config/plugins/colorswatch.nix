{pkgs, ...}:
{
	extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
		name = "colorswatch.vim";
		src = pkgs.fetchFromGitHub {
			owner = "cocopon";
			repo = "colorswatch.vim";
			rev = "2e3f847";
			hash = "sha256-IgS7BGSQNf7MkE8rwjmK257aE4FcJV+7cpO1l6uiVKM=";
		};
	})];
}
