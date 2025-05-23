{ lib, pkgs, ... }:
{
	plugins.lualine = {
		enable = true;
		settings = {
			sections = {
				lualine_a = [{
					name = "mode";
					separator.left = "";
					padding = { right = 2; left = 0; };
				}];
				lualine_b = ["filename" "branch"];
				lualine_c = ["%="];
				lualine_x = [
					"encoding"
					{
						name = "fileformat";
						extraConfig.symbols.unix = if lib.hasSuffix "darwin" pkgs.system
																				 then ""
																				 else "";
					}
				];
				lualine_y = ["filetype" "progress"];
				lualine_z = [{
					name = "location";
					separator.right = "";
					padding = { right = 2; left = 0; };
				}];
			}; 
			tabline = {
				lualine_a = [
					{
						name = "buffers";
						separator = { left = ""; right = ""; };
						padding = { left = 1; right = 1; };
						extraConfig = {
							symbols = { alternate_file = ""; };
						};
					}
				];
			};
			options = {
				componentSeparators = {left = ""; right = "";};
				sectionSeparators = {
					left = "";
					right = "";
				};
				theme = {
					normal = {
						a = { fg = "#080808"; bg = "#d183e8"; };
						b = { fg = "#c6c6c6"; bg = "#303030"; };
						c = { fg = "white"; bg = "None"; };
					};
					insert.a = { fg = "#080808"; bg = "#80a0ff"; };
					visual.a = { fg = "#080808"; bg = "#79dac8"; };
					replace.a = { fg = "#080808"; bg = "#ff5189"; };
					inactive.a = { fg = "white"; bg = "303030"; };
				};
			};
		};
	};
}
