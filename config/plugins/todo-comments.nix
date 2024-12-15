{
	plugins.todo-comments.enable = true;
	keymaps = [{
		key = "<leader>st";
		action = "<cmd>TodoTelescope<cr>";
		mode = ["n" "v"];
		options.desc = "Search TODOs";
	}];
}
