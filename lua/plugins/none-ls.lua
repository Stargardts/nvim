return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                require("none-ls.diagnostics.flake8"),
                null_ls.builtins.diagnostics.mypy,
                -- null_ls.builtins.diagnostics.tsc,
                null_ls.builtins.formatting.clang_format.with({
                    extra_args = { "-style=file", "-assume-filename=" .. vim.fn.expand("~/.clang-format") },
                }),

                -- null_ls.builtins.diagnostics.bashls,
                null_ls.builtins.diagnostics.golangci_lint,
                -- null_ls.builtins.diagnostics.htmlhint,
                -- null_ls.builtins.diagnostics.stylelint,
                require("none-ls.diagnostics.ruff"),
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
        -- Auto-format on save
        vim.api.nvim_create_autocmd("BufWritePre", {
            callback = function()
                vim.lsp.buf.format()
            end,
        })
    end,
}
