{
	plugins = {
		lsp-lines.enable = true;
		lsp-format.enable = true;
		helm.enable = true;
		# NOTE: For formatting to work, rustfmt needs to be installed.
		rustaceanvim.enable = true;
		lsp = {
			enable = true;
			servers = {
				html.enable = true;
				lua-ls.enable = true;
				nil-ls.enable = true;
				marksman.enable = true;
				tsserver.enable = true;
				jsonls.enable = true;
				fennel_ls.enable = true;
			};
			keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
					"<leader>cf" = {
						action = "format";
						desc = "Format";
					};
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "[d" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "]d" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
		};
	};
	extraConfigLua = ''
		require("lspconfig").racket_langserver.setup{}
	'';
}
