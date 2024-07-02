{
	plugins.neo-tree = {
		enable = true;
		eventHandlers = {
			file_opened = ''
				function(file_path)
					require("neo-tree").close_all()
				end
			'';
		};
	};
	keymaps = [{
		key = "<leader>e";
		action = "<cmd>Neotree toggle<cr>";
		mode = ["n" "v"];
		options.desc = "Explorer NeoTree";
	}];
}
