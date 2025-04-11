-- return {
--     'stevearc/oil.nvim',
--     ---@module 'oil'
--     ---@type oil.SetupOpts
--     opts = {},
--     -- Optional: Configure keymaps for the floating window
--     keymaps = {
--         ["q"] = "actions.close",
--     },
--     -- Optional dependencies
--     dependencies = { { "echasnovski/mini.icons", opts = {} } },
--     -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
--     lazy = false,
--     config = function()
--         require("oil").setup({
--             view_options = {
--                 show_hidden = true,
--             },
--             -- Configure oil to use a floating window
--             float = {
--                 -- Enable the floating window
--                 enable = true,
--                 -- You can customize the floating window appearance
--                 max_width = 0.8,
--                 max_height = 0.5,
--                 border = "rounded",
--                 win_options = {
--                     winblend = 0,
--                 },
--             }
--         })
--         vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
--     end,
-- }


return {
    'stevearc/oil.nvim',
    opts = {
        view_options = {
            show_hidden = true,
        },
        open_cmd = "Oil --float", -- This ensures oil opens in a floating window
    },
    keymaps = {
        ["q"] = "actions.close",
    },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,
    config = function()
        require("oil").setup({
            view_options = {
                show_hidden = true,
            },
        })
        vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open Oil in floating window" })
    end,
}
