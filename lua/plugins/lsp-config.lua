return {
    {
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
    end},
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "pyright", "rust_analyzer"}
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({capabilities = capabilities})
            lspconfig.pyright.setup({capabilities = capabilities})
            lspconfig.rust_analyzer.setup({capabilities = capabilities})
            lspconfig.ruff.setup({capabilities = capabilities})
            lspconfig.tsserver.setup({capabilities = capabilities})
            lspconfig.gopls.setup({capabilities = capabilities})
            lspconfig.html.setup({capabilities = capabilities})
            lspconfig.tailwindcss.setup({capabilities = capabilities})
            lspconfig.bashls.setup({capabilities = capabilities})
            lspconfig.htmx.setup({capabilities = capabilities})
            lspconfig.clangd.setup({capabilities = capabilities})


            vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>rn', vim.lsp.buf.rename, {})

        end
    }
}
