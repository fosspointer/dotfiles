local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"cpp", "c", "rust", "c_sharp", "vim", "glsl", "javascript", "typescript", "bash", "yuck", "python", "java", "lua"},
    highlight = {enable = true},
    indent = {enable = true},
})
