{ pkgs, ... }:
{
	extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
		name = "better-escape";
		src = pkgs.fetchFromGitHub {
			owner = "max397574";
			repo = "better-escape.nvim";
			rev = "bb197e5";
			hash = "sha256-Usizi6w5tLM28uxibL7vEdvC8SwFi24QFSttEfhB1oo=";
		};
	})];
	# extraConfigLua = ''
	# 	require("better_escape").setup({
	# 		mappings = {
	# 			i = {
	# 				n = {
	# 					n = "<Esc>",
	# 					e = "<Esc>"
	# 				},
	# 				e = {
	# 					n = "<Esc>",
	# 					e = "<Esc>"
	# 				},
	# 			},
	# 			c = {
	# 				n = {
	# 					n = "<Esc>",
	# 					e = "<Esc>"
	# 				},
	# 				e = {
	# 					n = "<Esc>",
	# 					e = "<Esc>"
	# 				},
	# 			},
	# 			v = {
	# 				n = {
	# 					n = "<Esc>",
	# 					e = "<Esc>"
	# 				},
	# 				e = {
	# 					n = "<Esc>",
	# 					e = "<Esc>"
	# 				},
	# 			},
	# 			s = {
	# 				n = {
	# 					n = "<Esc>",
	# 					e = "<Esc>"
	# 				},
	# 				e = {
	# 					n = "<Esc>",
	# 					e = "<Esc>"
	# 				}
	# 			},
	# 		}
	# 	})
	# '';
}
