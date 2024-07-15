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
			callback = { __raw =''
				function()
					vim.defer_fn(function()
						if vim.api.nvim_get_mode()["mode"] == "n" then
							vim.cmd('Markview enable')
						end
					end, 2000)
				end
			''; };
			event = ["InsertLeave"];
			pattern = "*.md";
		}
		{
			callback = {
				__raw = "function() vim.cmd('Markview disable') end";
			};
			event = ["InsertEnter"];
			pattern = "*.md";
		}
	];
}
