local M = {}
local override = require("custom.override")

M.ui = {
    changed_themes = {},
    theme_toggle = { "catppuccin", "catppuccin_late" },
    theme = "catppuccin",
    transparency = false,
    hl_override = {
        CursorLine = { bg = "#272a4b" },
        ColorColumn = { bg = "#011427" },
        IncSearch = { fg = "#282737", bg = "#4ae643" },
        Search = { fg = "#282737", bg = "#4ae643" },
        String = { fg = "#24742e" },
        -- Constant = { fg = "#ffffff" },
        -- Character = { fg = "#00679d" },
        -- Number = { fg = "#1467bd" },
        -- Boolean = { fg = "#f9d42e" },
        -- Float = { fg = "#1467bd" },
        -- Function = { fg = "#0b66bc" },
        -- Identifier = { fg = "#ff080f" },
        -- Conditional = { fg = "#ed8560" },
        -- Statement = { fg = "#000000" },
        -- Repeat = { fg = "#f9d42e" },
        -- Label = { fg = "#69d42e" },
        -- Operator = { fg = "#ffffff" },
        -- Keyword = { fg = "#df8b27" },
        -- Exception = { fg = "#ffffff" },
        -- Include = { fg = "#bf30ae" },
        -- PreProc = { fg = "#ffffff" },
        -- Define = { fg = "#ff000f" },
        -- Macro = { fg = "#ffffff" },
        -- PreCondit = { fg = "#ffffff" },
        -- StorageClass = { fg = "#ffffff" },
        -- Type = { fg = "#0b66bc" },
        -- Typedef = { fg = "#ed8580" },
        -- Typebuiltin = { fg = "#ff0000" },
        -- Tag = { fg = "#ff0000" },
        -- Structure = { fg = "#ffffff" },
        -- Comment = { fg = "#4e4d5d" },
        -- Delimiter = { fg = "#000000" },
    },
}

M.mappings = require("custom.mappings")

M.plugins = {
    user = require("custom.plugins"),
    override = {
        ["goolord/alpha-nvim"] = override.alpha,
        ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
        ["NvChad/nvim-colorizer.lua"] = override.colorizer,
        -- ["github/copilot.vim"] = override.copilot,
        ["neovim/nvim-lspconfig"] = override.lspconfig,
        ["williamboman/mason.nvim"] = override.mason,
        ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
        ["NvChad/ui"] = override.ui,
    },
}

return M
