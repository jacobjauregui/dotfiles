local M = {}
local override = require("custom.override")

M.mappings = require("custom.mappings")

M.ui = {
    changed_themes = {},
    theme_toggle = { "catppuccin", "catppuccin_latte" },
    theme = "catppuccin",
    transparency = false,
    hl_override = {
    	CursorLine = {
    		bg = "#272a4b" --"one_bg",
    	},
    },
}

M.plugins = {
    user = require("custom.plugins"),
    override = {
        ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
        ["NvChad/nvim-colorizer.lua"] = override.colorizer,
        --["github/copilot.vim"] = override.copilot
        ["williamboman/mason.nvim"] = override.mason,
        ["nvim-treesitter/nvim-treesitter"] = override.treesiter,
        ["NvChad/ui"] = override.ui,
        ["folke/which-key.nvim"] = override.whichkey,
    },
}

return M
