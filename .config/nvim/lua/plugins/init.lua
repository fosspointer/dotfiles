return {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "neovim/nvim-lspconfig" },
    {
	    "hrsh7th/nvim-cmp",
	    event = { "InsertEnter", "CmdlineEnter" }
    },
    { "hrsh7th/cmp-nvim-lsp"},
}
