{pkgs, ...}:
{
	extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
		name = "markview.nvim";
		src = pkgs.fetchFromGitHub {
			owner = "OXY2DEV";
			repo = "markview.nvim";
			rev = "4fbeb21";
			hash = "sha256-RC52AmFNztYyPdNu9Wu8MWPIGCgF+gmHwx769ia+roc=";
		};
	})];
	autoCmd = [
		{
			command = "sleep 2 | Markview enable";
			event = ["InsertLeave"];
			pattern = "*.md";
		}
		{
			command = "Markview disable";
			event = ["InsertEnter"];
			pattern = "*.md";
		}
	];
}
