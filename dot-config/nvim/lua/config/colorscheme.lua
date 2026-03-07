require("catppuccin").setup({
    transparent_background = true,
    integrations = {
        telescope = true
    },
    highlight_overrides = {
        all = function(mocha)
            return {
                LineNr = { fg = mocha.flamingo }
            }
        end
    }
})

vim.cmd.colorscheme 'catppuccin-mocha' 
