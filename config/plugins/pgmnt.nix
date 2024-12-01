{pkgs, ...}:
{
	extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
		name = "pgmnt.vim";
		src = pkgs.fetchFromGitHub {
			owner = "cocopon";
			repo = "pgmnt.vim";
			rev = "89b8f08";
			hash = "sha256-9xzFH0a5W1gv+NmH9gK54RDwdLh68C6Tx6N38G+G+CY=";
		};
	})];
}
