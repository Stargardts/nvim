return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                -- Remove lua_ls from ensure_installed since we'll manage it manually
                ensure_installed = { "pyright", "rust_analyzer" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")

            -- Explicitly configure lua_ls to use the NixOS system binary
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
                cmd = { "/run/current-system/sw/bin/lua-language-server" },
            })

            -- Other language servers can still use Mason or system defaults
            lspconfig.pyright.setup({ capabilities = capabilities })
            lspconfig.rust_analyzer.setup({ capabilities = capabilities })
            -- lspconfig.ruff.setup({ capabilities = capabilities })
            lspconfig.tsserver.setup({ capabilities = capabilities })
            lspconfig.gopls.setup({ capabilities = capabilities })
            lspconfig.html.setup({ capabilities = capabilities })
            lspconfig.tailwindcss.setup({ capabilities = capabilities })
            lspconfig.bashls.setup({ capabilities = capabilities })
            lspconfig.htmx.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.hls.setup {
                cmd = { "/nix/store/3c9vpvsvryscgayz3gv6zwapd6ykpkyl-haskell-language-server-2.9.0.0/bin/haskell-language-server", "--lsp" }
            }

            -- Keymaps remain unchanged
            vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>rn', vim.lsp.buf.rename, {})
        end
    }
}


-- ~/.config/nvim/lua/plugins/lsp.lua
-- return {
--     {
--         "williamboman/mason.nvim",
--         config = function()
--             require("mason").setup()
--         end
--     },
--     {
--         "williamboman/mason-lspconfig.nvim",
--         config = function()
--             require("mason-lspconfig").setup({
--                 ensure_installed = { "pyright", "rust_analyzer" }
--             })
--         end
--     },
--     {
--         "neovim/nvim-lspconfig",
--         config = function()
--             local lspconfig = require("lspconfig")
--
--             -- No need for cmp_nvim_lsp capabilities; blink-cmp handles LSP completion
--             local capabilities = vim.lsp.protocol.make_client_capabilities()
--             -- Optionally enable snippet support if needed
--             capabilities.textDocument.completion.completionItem.snippetSupport = true
--
--             -- Configure LSP servers
--             lspconfig.lua_ls.setup({
--                 capabilities = capabilities,
--                 cmd = { "/run/current-system/sw/bin/lua-language-server" },
--             })
--             lspconfig.pyright.setup({ capabilities = capabilities })
--             lspconfig.rust_analyzer.setup({ capabilities = capabilities })
--             lspconfig.ruff.setup({ capabilities = capabilities })
--             lspconfig.tsserver.setup({ capabilities = capabilities })
--             lspconfig.gopls.setup({ capabilities = capabilities })
--             lspconfig.html.setup({ capabilities = capabilities })
--             lspconfig.tailwindcss.setup({ capabilities = capabilities })
--             lspconfig.bashls.setup({ capabilities = capabilities })
--             lspconfig.htmx.setup({ capabilities = capabilities })
--             lspconfig.clangd.setup({ capabilities = capabilities })
--
--             -- Keymaps
--             vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover, {})
--             vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
--             vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
--             vim.keymap.set({ 'n', 'v' }, '<leader>rn', vim.lsp.buf.rename, {})
--         end
--     }
-- }
