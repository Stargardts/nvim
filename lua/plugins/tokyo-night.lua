return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},

    config = function()
        require("tokyonight").setup({
            style = "night",
            transparent = false,
            terminal_colors = true,
            styles = {
                comments = { italic = true },
                conditionals = { italic = true },
                keywords = { italic = true , bold = true },
                functions = { italic = true , underline = true},
                variables = {},
                sidebars = "dark",   -- style for sidebars, see below
                floats = "dark",     -- style for floating windows
            },
            sidebars = { "qf", "help" },
            day_brightness = 0.3,
            hide_inactive_statusline = true,
            dim_inactive = false,
            lualine_bold = true,
        })
        vim.cmd([[colorscheme tokyonight]])
    end,
}
