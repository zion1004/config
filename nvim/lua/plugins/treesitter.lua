return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function(_, opts)
		if type(opts.ensure_installed) == "table" then
			opts.ensure_installed = LazyVim.dedup(opts.ensure_installed)
		end
		require("nvim-treesitter.configs").setup(opts)
	end,
}


