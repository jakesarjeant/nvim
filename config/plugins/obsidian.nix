{
	plugins.obsidian = {
		enable = true;
		settings = {
			ui.enable = false;
			workspaces = [{
				name = "home";
				path = "~/notes/home";
			}];
			picker = {
				name = "telescope.nvim";
			};
		};
	};

	keymaps = [
		{
			key = "<leader>on";
			action = "<cmd>ObsidianNew<cr>";
			mode = "n";
			options.desc = "New untitled note";
		}
		{
			key = "<leader>oo";
			action = "<cmd>ObsidianSearch<cr>";
			mode = "n";
			options.desc = "Search or create a note";
		}
		{
			key = "<leader>ot";
			action = "<cmd>ObisidianTags<cr>";
			mode = "n";
			options.desc = "Show/Search Tags";
		}
		{
			key = "<leader>oc";
			action = "<cmd>ObsidianTOC<cr>";
			mode = "n";
			options.desc = "Show table of contents";
		}
	];
}
