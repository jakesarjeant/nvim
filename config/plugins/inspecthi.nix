{pkgs, ...}:
{
	extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
		name = "inspecthi.vim";
		src = pkgs.fetchFromGitHub {
			owner = "cocopon";
			repo = "inspecthi.vim";
			rev = "b282d25";
			hash = "sha256-TVTOcP8rSvQv0EluEq/ChkK5p5yeOFkmBJg/berlg8Y=";
		};
	})];
}
