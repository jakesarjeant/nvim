{pkgs, ...}:
{
	extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
		name = "markview.nvim";
		src = pkgs.fetchFromGitHub {
			owner = "OXY2DEV";
			repo = "markview.nvim";
			rev = "72cd342";
			hash = "sha256-4D4jB9CmamMAdpEodw4MdDyJVU6EMsh8P4gLs7p4E40=";
		};
	})];
	extraConfigLua = ''
		require("markview").setup({
		  modes = { "n", "v", "c", "nc" },
			hybrid_modes = { "n" }
		})
	'';
	# autoCmd = [
	# 	{
	# 		callback = { __raw =''
	# 			function()
	# 				vim.defer_fn(function()
	# 					if vim.api.nvim_get_mode()["mode"] == "n" then
	# 						vim.cmd('Markview enable')
	# 					end
	# 				end, 2000)
	# 			end
	# 		''; };
	# 		event = ["InsertLeave"];
	# 		pattern = "*.md";
	# 	}
	# 	{
	# 		callback = {
	# 			__raw = "function() vim.cmd('Markview disable') end";
	# 		};
	# 		event = ["InsertEnter"];
	# 		pattern = "*.md";
	# 	}
	# ];
}
