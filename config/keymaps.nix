{
	keymaps = [
		{
			key = "<leader>fw";
			action = "<cmd>w<cr>";
			mode = "n";
			options.desc = "Write current file";
		}
		{
			key = "x";
			action = ''"_x'';
			mode = ["n" "v"];
			options.desc = "Delete without yanking";
		}
		{
			key = "<C-r>";
			action = ''"hy:%sno/<C-r>h//g<left><left>'';
			mode = "v";
			options.desc = "Find-and-replace selected text in buffer";
			options.remap = false;
		}
		{
			key = "y";
			action = "ygv<Esc>";
			mode = ["v"];
			options.desc = "Yank and leave cursor in place";
			# This keymap might cause flashing; if so, :set lazyredraw could help
		}
		{
			key = "<C-j>";
			action = "<C-w>j";
			mode = ["n" "v"];
		}
		{
			key = "<C-k>";
			action = "<C-w>k";
			mode = ["n" "v"];
		}
		{
			key = "<C-h>";
			action = "<C-w>h";
			mode = ["n" "v"];
		}
		{
			key = "<C-l>";
			action = "<C-w>l";
			mode = ["n" "v"];
		}
		{
			key = "<S-h>";
			action = "<cmd>bp<cr>";
			mode = ["n" "v"];
		}
		{
			key = "<S-l>";
			action = "<cmd>bn<cr>";
			mode = ["n" "v"];
		}
		{
			key = "<Esc>";
			action = "<cmd>noh<cr>";
			mode = ["n"];
		}
	];
}
