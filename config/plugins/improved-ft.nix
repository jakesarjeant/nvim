{pkgs, ...}:
{
	extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
		name = "improved-ft.nvim";
		src = pkgs.fetchFromGitHub {
			owner = "backdround";
			repo = "improved-ft.nvim";
			rev = "f2259e9";
			hash = "sha256-gF3ZyprH7cl0ddhfAUIUL/drPJCndWD1gWKkBCUKJ3I=";
		};
	})];
	extraConfigLua = ''
		require("improved-ft").setup({
			use_default_mappings = true
		})
	'';
}
