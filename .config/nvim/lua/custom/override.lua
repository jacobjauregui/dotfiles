local M = {}

M.alpha = {
    after = "base46",
}

M.blankline = {
    filetype_exclude = {
        "help",
        "terminal",
        "alpha",
        "packer",
        "lspinfo",
        "TelescopePrompt",
        "TelescopeResults",
        "nvchad_cheatsheet",
        "lsp-installer",
    },
    buftype_exclude = { "terminal" },
    show_trailing_blankline_indent = true,
    show_first_indent_level = true,
    show_current_context = true,
    show_current_context_start = true,
}

M.colorizer = {
    filestypes = "*",
    user_default_options = {
        RGB = true,
        RRGGBB = true,
        names = true,
        RRGGBBAA = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        css_fn = true,
        mode = "background",
    },
}

-- M.copilot = {
--     copitlot_node_command = "/home/jacob/.nvm/version/node/v17.9.1/bin/node",
-- }

M.lspconfig = {
    config = function()
        require "custom.plugins.lspconfig"
        require "plugins.configs.lspconfig"
    end,
}

M.mason = {
    ensure_installed = {
        "autopep8",
        "chrome-debug-adapter",
        "clang-format",
        "clangd",
        "csharpier",
        "cpptools",
        "cpplint",
        "css-lsp",
        "editorconfig-checker",
        "eslint_d",
        "flake8",
        "html-lsp",
        "netcoredbg",
        "python-lsp-server",
        "pyright",
        "pylint",
        "debugpy",
        "textlint",
    },
}

M.nvimtree = {
    git = {
        enable = true,
    },
    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = true,
            },
        },
    },
    view = {
        side = "left",
    },
}

M.ui = {
    statusline = {
        separator_style = "round",
        buftype_exclude = { "terminal" },
        overrinden_modules = nil,
    },
    tabufline = {
        enabled = true,
        lazyload = false,
        overriden_modules = nil,
    },
}

M.treesitter = {
    ensure_installed = {
        "c",
        "c_sharp",
        "css",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "meson",
        "ninja",
        "python",
        "yaml",
    },
}

return M
