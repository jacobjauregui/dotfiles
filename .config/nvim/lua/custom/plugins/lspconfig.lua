local present, lspconfig = pcall(require, "lspconfig")

if not present then
    return
end

require("base46").load_highlight "lsp"
require "nvchad_ui.lsp"

local M = {}
local utils = require "core.utils"

M.on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = true 
    client.server_capabilities.documentRangeFormattingProvider = true
    utils.load_mappings("lspconfig", { buffer = bufnr})
        if client.server_capabilities.signatureHelpProvider then
            require("nvchad_ui.signature").setup(client)
        end
    end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.completion.completionItem = {
    documentationFormat = { "markdown", "plaintext", "python3" },
    snippetSupport = true,
    preselectSupport = true,
    insertReplaceSupport =true,
    labelDetailsSupport = true,
    deprecatedSupport = true,
    commitCharactersSupport = true,
    tagSupport = { valueSet = { 1 } },
    resolveSupport = {
        propierties = {
            "documentation",
            "detail",
            "additionalTextEdits",
        },
    },
}

lspconfig.clangd.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    cmd = { "clangd" },
    filetypes = {
        "c",
        "cpp",
        "objc",
        "objcpp",
        "cuda",
        "proto",
    },
    single_file_support = true,
}

lspconfig.csharp_ls.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    cmd = { "csharp-ls" },
    filetypes = { "cs" },
    init_options = { AutomaticWorkspaceInit = true },
    single_file_support = true,
}

lspconfig.html.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    settings = {},
    init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = true,
            javascript = true,
        },
        provideFormatter = true,
    },
    single_file_support = true,
}

lspconfig.pyright.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
            },
        },
    },
    single_file_support = true,
}

lspconfig.sumneko_lua.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = { 
                globals = { 'vim' },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
return M
