return {
    "simrat39/rust-tools.nvim",
    config = function()
        require("rust-tools").setup({
            tools = {
                autoSetHints = true,
                RustHoverActions = true,
                runnables = {
                    use_telescope = true,
                },
                inlay_hints = {
                    show_parameter_hints = true,
                    parameter_hints_prefix = "<-",
                    other_hints_prefix = "=>",
                },
            },
            server = {
                on_attach = function(client, bufnr)
                    client.resolved_capabilities.document_formatting = false
                    client.resolved_capabilities.document_range_formatting = false
                end, -- rust-analyzer is not good at formatting 
            }
        })
    end,
}
