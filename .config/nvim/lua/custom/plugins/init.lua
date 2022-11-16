return {
    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },
    ["norcalli/nvim-colorizer.lua"] = {},
    ["github/copilot.vim"] = { enabled = true },
    ["NvChad/ui"] = { enabled = true },
    ["kdheepak/lazygit.nvim"] = {},
    ["edluffy/specs.nvim"] = {},
    ["alvan/vim-closetag"] = {},
    ["windwp/nvim-ts-autotag"] = {},
    ["windwp/nvim-autopairs"] = {},
    ["folke/which-key.nvim"] = { disable = false },

}
