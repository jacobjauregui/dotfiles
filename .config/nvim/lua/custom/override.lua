local M = {}

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
        "",
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

M.mason = {
    ensure_installed = {
        "actionlint",
        "bash-language-server",
        "clang-format",
        "cmake-language-server",
        "cmakelang",
        "codespell",
        "css-lsp",
        "cssmodules-language-server",
        "debugpy",
        "diagnostic-languageserver",
        "dprint",
        "editorconfig-checker",
        "emmet-ls",
        "eslint-lsp",
        "flake8",
        "go-debug-adapter",
        "grammarly-languageserver",
        "html-lsp",
        "json-lsp",
        "js-debug-adapter",
        "lua-language-server",
        "luaformatter",
        "marksman",
        "misspell",
        "mypy",
        "netcoredbg",
        "prettier",
        "pydocstyle",
        "pylint",
        "pyright",
        "python-lsp-server",
        --"godot-source",
        "shellcheck",
        "shellharden",
        "stylelint-lsp",
        "stylua",
        "typescript-language-server",
        "vim-language-server",
        "vulture",
        "write-good",
        "xmlformatter",
        "yaml-language-server",
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
        overriden_modules = nil,
    },
    tabufline = {
        enabled = true,
        lazyload = false,
        overriden_modules = nil,
    },
}

M.treesitter = {
    ensure_installed = {
        "bash",
        "c",
        "c_sharp",
        "css",
        "html",
        "javascript",
        "json",
        "json5",
        "jsonnet",
        "kotlin",
        "lua",
        "markdown",
        "markdown_inline",
        "meson",
        "ninja",
        "python",
        "scss",
        "slint",
        "typescript",
        "yaml",
    },
}

M.whichkey = {
    pluging = {
        marks = true,
        registers = true,
        spelling = {
            enabled = true,
            suggestions = 15,
        },
        presets = {
            operator = true,
            motions = true,
            text_objets = true,
            windows = true,
            nav = true,
            z = true,
            g = true,
        },
    },
    operators = { gc = "Comments" },
    key_labels = {
        ["<super>"] = "<SUP>", -- <WIN> or <CMD> on Windows/MacOs
        ["<fn>"] = "<FN>",
        ["<alt>"] = "<ALT>",
        ["<ctrl>"] = "<CRT>",
        ["<shift>"] = "<SFT>",
        ["<capslock>"] = "<CPL>",
        ["<tab>"] = "<TAB>",
        ["<esc>"] = "<ESC>",
        ["<home>"] = "<HOME>",
        ["<end>"] = "<END>",
        ["<insert>"] = "<INS>",
        ["<delete>"] = "<DEL>",
        ["<space>"] = "<SPC>",
        ["<backspace>"] = "BACK",
        ["pageup"] = "<PUP>",
        ["<pagedown>"] = "<PDN>",
        ["<up>"] = "<UP>",
        ["<down>"] = "<DOWN>",
        ["<left>"] = "<LEFT>",
        ["<right>"] = "<RIGHT>",
        ["<cr>"] = "<CRN>",
    },
    icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
    },
    popup_mappings = {
        scroll_down = '<DOWN>',
        scroll_up = '<UP>',
    },
    window = {
        border = "none",
        position = "bottom",
        margin = { 1, 0, 1, 0 },
        padding = { 2, 2, 2, 2 },
        winblend = 0
    },
    layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, mas = 50 },
        spacing = 3,
        allign = "left",
    },
    ignore_missing = false,
    hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "},
    show_help = true,
    show_keys = true,
    triggers = "auto",
    triggers_blacklist = {
        i = { "j", "k" },
        v = { "j", "k" },
    },
    disable = {
        buftypes = {},
        filetypes = { "TelescopePrompt" },
    }
}
-- M.cmp = {
--   sources = {
--     { name = "nvim_lsp" },
--     { name = "buffer" },
--     { name = "path" },
--     { name = "nvim_lua" },
--     { name = "calc" },
--     { name = "emoji" },
--     { name = "treesitter" },
--     { name = "spell" },
--     { name = "look" },
--     { name = "crates" },
--     { name = "luasnip" },
--   },
-- }
return M
