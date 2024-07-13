{pkgs, ...}:
{
	plugins.neorg = {
		package = pkgs.vimPlugins.neorg;
		enable = true;
		modules."core.defaults" = {
			__empty = null;
		};
		modules."core.dirman".config.workspaces = {
			home = "~/notes/home";
		};
	};
}
