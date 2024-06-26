local tokyodark = require("tokyodark")
local catppuccin = require("catppuccin")

tokyodark.setup()
catppuccin.setup()

function TransparentBackground(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

TransparentBackground()
