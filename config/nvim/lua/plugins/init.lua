return {
	-- Conform.
	{
		"stevearc/conform.nvim",
		event = 'BufWritePre', -- uncomment for format on save
		opts = require "configs.conform",
	},

	-- LuaRocks.
	{
		"camspiers/luarocks",
		dependencies = {
			"rcarriga/nvim-notify",
		},
		opts = {
			rocks = {
				"fzy",
			},
		},
	},

	-- LSP-Config.
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			'williamboman/mason.nvim',
			'folke/neodev.nvim',
		},
		config = function()
			--require "configs.lspconfig"
			local signs = {
				Error = '',
				Warn = '',
				Hint = '',
				Info = ''
			}
			for type, icon in pairs(signs) do
				local hl = 'DiagnosticSign' .. type
				vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
			end
			vim.diagnostic.config({
				virtual_text = { prefix = '●' },
				severity_sort = true,
				float = { source = 'always' }
			})
			vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
			vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev)
			vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next)
			vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist)

			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem = {
				documentationFormat = { 'markdown', 'plaintext' },
				snippetSupport = true,
				preselectSupport = true,
				insertReplaceSupport = true,
				labelDetailsSupport = true,
				deprecatedSupport = true,
				tagSupport = { valueSet = 1 },
				resolveSuppor = {
					properties = {
						'documentation',
						'detail',
						'additionalTextEdits'
					},
				}
			}

			local on_attach = function(client, bufnr)
				client.server_capabilities.documentFormattingProvider = true
				client.server_capabilities.documentRangeFormattingProvider = true
				vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'
				local opts = { buffer = bufnr }
				vim.keymap.set('n', 'D', vim.lsp.buf.declaration, opts)
				vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
				vim.keymap.set('n', 'T', vim.lsp.buf.type_definition, opts)
				vim.keymap.set('n', 'R', vim.lsp.buf.rename, opts)
			end
			require('neodev').setup()
			require('lspconfig').html.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				init_options = {
					configurationSection = { 
						'html',
						'css',
						'javascript'
					},
					embeddedLanguages = {
						css = true,
						javascript = true
					},
					provideFormatter = true
				},
				single_file_support = true
			})
		end
	},

	-- Github Copilot.
	{
		"github/copilot.vim",
		event = 'VeryLazy'
	},

	-- Treesitter.
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ":TSUpdate",
		event = "VeryLazy",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = {
				"bash",
				"c_sharp",
				"css",
				"html",
				"javascript",
				"json",
				"lua",
				"luadoc",
				"python",
				"vim",
				"vimdoc"
			},
			highlight = { enable = true },
			indent = { enable = false },
			textobjects = {
				select = {
					enable = true,
					lookahead = true,
					keymaps = {
						["of"] = "@function.outer",
						["if"] = "@function.inner",
						["oc"] = "@conditional.outer",
						["ic"] = "@conditional.inner",
						["ol"] = "@loop.outer",
						["il"] = "@loop.inner",
					},
				},
			},
		},
	},
}
