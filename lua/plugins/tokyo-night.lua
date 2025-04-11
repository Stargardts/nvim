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
                keywords = { italic = true, bold = true },
                functions = { italic = true, underline = true },
                variables = {},
                sidebars = "dark", -- style for sidebars, see below
                floats = "dark",   -- style for floating windows
            },
            sidebars = { "qf", "help" },
            day_brightness = 0.3,
            hide_inactive_statusline = true,
            dim_inactive = false,
            lualine_bold = true,
        })
        vim.cmd([[colorscheme tokyonight]])


        -- Apply highlight settings after a short delay to override Monokai defaults
        vim.defer_fn(function()
            -- Force background color to black
            vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
            vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#000000" })

            -- Set styles for comments, keywords, functions, etc.
            vim.api.nvim_set_hl(0, "Keyword", { fg = "#f31f3c", italic = true, bold = true })
            vim.api.nvim_set_hl(0, "@keyword", { fg = "#f31f3c", italic = true, bold = true })

            vim.api.nvim_set_hl(0, "Function", { fg = "#eaf44c", italic = true, underline = true })
            vim.api.nvim_set_hl(0, "Variable", { fg = "#2ad8c6" }) -- No special styling
        end, 100) -- Delay of 50ms to apply custom highlights after the colorscheme
    end,
}
