{ pkgs, ... }:
{
	plugins.treesitter = {
    enable = true;
		# ensureInstalled = null;
		# languageRegister.caddyfile = "caddy";
		# grammarPackages =
		# 	pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars
		# 	++ [(pkgs.tree-sitter.buildGrammar {
		# 		language = "caddyfile";
		# 		version = "65b6043";
		# 		src = pkgs.fetchFromGitHub {
		# 			owner = "Samonitari";
		# 			repo = "tree-sitter-caddy";
		# 			rev = "65b6043";
		# 			sha256 = "sha256-IDDz/2kC1Dslgrdv13q9NrCgrVvdzX1kQE6cld4+g2o=";
		# 		};
		# 	})];
		# gccPackage = pkgs.gcc;
		# nixGrammars = true;
  };

	filetype.filename."Caddyfile" = "caddyfile";
}
