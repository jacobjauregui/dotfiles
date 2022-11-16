local function termcodes(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local M = {}

M.general = {
	n = {
		["a"] = { "i", "change to insert mode prev-char" },
        ["h"] = { "a", "change to insert mode next-char" },
        ["m"] = { "o", "change to insert mode line-down"},
        [";"] = { ":", "change to command mode" },
        [","] = { "<<", "delete indentation within visual mode" },
        ["."] = { ">>", "indent line within visual mode" },
        ["j"] = { "<Left>", "move left within normal mode" },
        ["l"] = { "<Right>", "move right within normal mode" },
        ["i"] = { "<Up>", "move up within normal mode" },
        ["k"] = { "<Down>", "move down within normal mode" },
        -- ["J"] = { "v && h", "select the back char" },
        -- ["L"] = { "v && l", "select the back char" },
        -- ["I"] = { "v && k", "select the back char" },
        -- ["K"] = { "v && j", "select the back char" },
        ["<C-j>"] = { "<C-w>h", "go to window left" },
        ["<C-l>"] = { "<C-w>l", "go towindow right" },
        ["<C-i>"] = { "<C-w>k", "go to whindow up" },
        ["<C-k>"] = { "<C-w>j", "go to window down" },
        ["<C-q>"] = { "<cmd> q! <CR>", "quit without save" },
        ["<C-c>"] = { "<cmd> $y+ <CR>", "copy whole file" },
        ["<C-e>"] = { "ggVG", "select all" },
        ["<leader>j"] = { "<Home>", "go to beggining of line in normal mode" },
        ["<leader>l"] = { "<End>", "go to end of line in normal mode"},
        ["<leader>i"] = { "gg", "go to the first line"},
        ["<leader>k"] = { "G", "go to the last line"},
        ["<leader>q"] = { "<cmd> wq <CR>", "save and quit" },
        ["<leader>s"] = { "<cmd> w <CR>", "save file" },
        ["<leader>n"] =  { "<cmd> set nu! <CR>", "toggle line number mode" },
        ["<leader>rn"] = { "<cmd> set rnu! <CR>", "toggle relative number" },
        ["<leader>uu"] = { "<cmd> :NvChadUpdate <CR>", "update nvchad" },
        ["<leader>tt"] = {
            function()
                require("base46").toggle_theme()
            end,
            "toggle theme",
        },
        ["<leader>b"] = { "<cmd> enew <CR>", "new buffer" },
        ["<F6>"] = { "<cmd> term python % <CR>", "run and debug code" },
        --["<ESC>"] = { "<cmd> noh <CR>", "no highlight" },
        },
        -- INSERT MODE
        i = {
            ["<A-n>"] = { "<ESC>", "exit current (v, x, i) mode" },
            ["<A-j>"] = { "<Left>", "move left within insert mode" },
            ["<A-l>"] = { "<Right>", "move right within insert mode" },
            ["<A-i>"] = { "<Up>", "move up within insert mode" },
            ["<A-k>"] = { "<Down>", "move down within insert mode" },
            ["<A-u>"] = { "<Delete>", "delete the next-char" },
            ["<A-h>"] = { "<Backspace>", "delete the prev-char" },
            ["<A-J>"] = { "<Home>", "go to beggining of line in insert mode" },
            ["<A-L>"] = { "<End>", "go to end of line within insert mode" },
            ["<leader><Space>"] = {"<Tab>", "indent line"},
            --["<S-TAB>"] = {"<Backspace>", "undo indent line"},
        },
        -- TERMINAL MODE
        t = {
            ["<C-x>"] = { termcodes "<C-\\><C-N>", "escape terminal mode" },
        },
        -- VISUAL AND SELECT MODE
        v = {
            ["<A-n>"] = { "<ESC>", "exit current (v, x, i) mode" },
            ["i"] = { "<Up>", "move up" },
            ["k"] = { "<Down>", "move down" },
            ["j"] = { "<Left>", "move left" },
            ["l"] = { "<Right>", "move right" },
            ["<leader>j"] = { "<Home>", "beggining of line" },
            ["<leader>l"] = { "<End>", "end of line" },
            ["<leader>i"] = { "gg", "go to first line" },
            ["<leader>k"] = { "G", "go to last line" },
            [","] = { "<", "delete indentation within visual mode" },
            ["."] = { ">", "indent line within visual mode" },
        },
        -- ONLY VISUAL MODE
        x = {
            ["<A-n>"] = { "<ESC>", "exit current (v, x, i) mode" },
            ["i"] = { "<Up>", "move up" },
            ["k"] = { "<Down>", "move down" },
            ["j"] = { "<Left>", "move left" },
            ["l"] = { "<Right>", "move right" },
            [","] = { "<", "delete indentation within visual mode" },
            ["."] = { ">", "indent line within visual mode" },
            ["<leader>j"] = { "<Home>", "beggining of line" },
            ["<leader>l"] = { "<End>", "end of line" },
            ["<leader>i"] = { "gg", "go to first line" },
            ["<leader>k"] = { "G", "go to last line" },
        },
    }

    M.tabufline = {
        plugin = true,
        n = {
            ["<TAB>"] = {
                function()
                    require("nvchad_ui.tabufline").tabuflineNext()
                end,
                "goto next fuffer",
            },
            ["<S-TAB>"] = {
                function()
                    require("nvchad_ui.tabufline").tabuflinePrev()
                end,
                "goto prev buffer",
            },
            ["<Bslash>"] = { "<cmd> TbufPick <CR>", "Pick buffer" },
            ["<leader>x"] = {
                function()
                    require("nvchad_ui.tabufline").close_buffer()
                end,
                "close buffer",
            },
        },
    }

    M.comment = {
        plugin = true,
        n = {
            ["<leader>/"] = {
                function()
                    require("Comment.api").toggle.linewise.current()
                end,
                "toggle comment",
            },
        },
        v = {
            ["<leader>/"] = {
                "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
                "toggle comment",
            },
        },
    }

    M.lspconfig = {
        plugin = true,
        n = {
            ["gD"] = {
                function()
                    vim.lsp.buf.declaration()
                end,
                "lsp declaration",
            },
            ["gd"] = {
                function()
                    vim.lsp.buf.definition()
                end,
                "lsp definition",
            },
            ["FF"] = {
                function()
                    vim.lsp.buf.hover()
                end,
                "lsp hover",
            },
            ["gi"] = {
                function()
                    vim.lsp.buf.implementation()
                end,
                "lsp implementation",
            },
            ["<leader>ff"] = {
                function()
                    vim.lsp.buf.signature_help()
                end,
                "lsp signature_help",
            },
            ["<leader>D"] = {
                function()
                    vim.lsp.buf.type_definition()
                end,
                "lsp definition type",
            },
            ["<leader>ra"] = {
                function()
                    require("nvchad_ui.renamer").open()
                end,
                "lsp rename",
            },
            ["<leader>ca"] = {
                function()
                    vim.lsp.buf.code_action()
                end,
                "lsp code_action",
            },
            ["gr"] = {
                function()
                    vim.lsp.buf.references()
                end,
                "lsp references",
            },
            ["<leader>f"] = {
                function()
                    vim.diagnostic.open_float()
                end,
                "floating diagnostic"
            },
            ["[d"] = {
                function()
                    vim.diagnostic.goto_prev()
                end,
                "goto prev",
            },
            ["d]"] = {
                function()
                    vim.diagnostic.goto_next()
                end,
                "goto next",
            },
            ["<leader>fm"] = {
                function()
                    vim.lsp.buf.format { async = true }
                end,
                "lsp formatting",
            },
            ["<leader>wa"] = {
                function()
                    vim.lsp.buf.add_workspace_folder()
                end,
                "add workspace folder",
            },
            ["<leader>wr"] = {
                function()
                    vim.lsp.buf.remove_workspace_folder()
                end,
                "remove workspace",
            },
            ["<leader>wl"] = {
                function()
                    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                end,
                "list workspace folders",
            },
        },
    }

    M.nvimtree = {
        plugin = true,
        n = {
            ["<F2>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
            ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
            ["<C-j>"] = { "<C-w>h", "window left" },
            ["<C-l>"] = { "<C-w>l", "window right" },
            ["<C-i>"] = { "<C-w>k", "whindow up" },
            ["<C-k>"] = { "<C-w>j", "window down" },
        },
    }

    M.telescope = {
        plugin = true,
        n = {
            ["<F3>"] = { "<cmd> Telescope find_files <CR>", "find files" },
            ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
            ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
            ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
            ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "help page" },
            ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
            ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },
            ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "git commits" },
            ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "git status" },
            ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "pick hidden term" },
            ["<leader>th"] = { "<cmd> Telescope themes <CR>", "nvcahd themes" },
        },
    }

    M.nvterm = {
        plugin = true,
        t = {
            ["<A-t>"] = {
                function()
                    require("nvterm.terminal").toggle "float"
                end,
                "toggle floating term",
            },
            ["<A-g>"] = {
            function()
                require("nvterm.terminal").toggle "horizontal"
            end,
            "toggle horizontal term",
        },
        ["<A-v>"] = {
            function()
                require("nvterm.terminal").toggle "vertical"
            end,
            "toggle vertical term",
        },
    },
    n = {
        ["<A-t>"] = {
            function()
                require("nvterm.terminal").toggle "float"
            end,
            "toggle floating term",
        },
        ["<A-g>"] = {
            function()
                require("nvterm.terminal").toggle "horizontal"
            end,
            "toggle horizontal term",
        },
        ["<A-v>"] = {
            function()
                require("nvterm.terminal").toggle "vertical"
            end,
            "toggle vertical term",
        },
        ["<leader>h"] = {
            function()
                require("nvterm.terminal").new "horizontal"
            end,
            "new horizontal term",
        },
        ["<leader>v"] = {
            function()
                require("nvterm.terminal").new "vertical"
            end,
            "new vertical term",
        },
    },
}

M.cmp = {
    plugin = true,
    i = {
        ["<C-Space>"] = {
            function()
                require("cmp").complete()
            end,
            "cmp complete",
        },
        ["<ESC><ESC>"] = {
            function()
                require("cmp").close()
            end,
            "cmp close",
        },
        ["<C-f>"] = {
            function()
                require("cmp").scroll { delta = 4 }
            end,
          "cmp scroll down",
        },
        ["<C-d>"] = {
            function()
                require("cmp").scroll { delta = -4 }
            end,
            "cmp scroll up",
        },
    },
}

M.whichkey = {
    plugin = true,
    n = {
        ["<leader>wK"] = {
            function()
                vim.cmd "Whichkey"
            end,
            "Which-key all keymaps",
        },
        ["<leader>wk"] = {
            function()
                local input = vim.fn.input "whichkey: "
                    vim.cmd("Whichkey " .. input)
            end,
            "Which-key querty lookup",
        },
    },
}

M.blankline = {
    plugin = true,
    n = {
        ["<leader>cc"] = {
            function()
                local ok, start = require("indent_blankline.utils").get_current_context(
                vim.g.indent_blankline_context_patterns,
                vim.g.indent_blankline_use_treesitter_scope
                )
                if ok then
                    vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start, 0 })
                    vim.cmd [[normal! _]]
                end
            end,
            "Jump to current_context",
        },
    },
}

M.gitsigns = {
    plugin = true,
    n = {
        ["]c"] = {
            function()
                if vim.wo.diff then
                  return "]c"
                end
                vim.schedule(function()
                    require("gitsigns").next_hunk()
                end)
                return"<Ignore>"
            end,
            "Jump to next hunk",
            opts = { expr = true },
        },
        ["[c"] = {
            function()
                if vim.wo.diff then
                    return "[c"
                end
                vim.schedule(function()
                    require("gitsigns").prev_hunk()
                end)
                return "<Ignore>"
            end,
            "Reset hunk",
        },
        ["<leader>ph"] = {
            function()
                package.loaded.gitsigns.blame_line()
            end,
            "Toggle deleted",
        },
    },
}

return M
