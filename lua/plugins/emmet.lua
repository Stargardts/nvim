return {
    "mattn/emmet-vim",
    config = function()
        -- Set leader key to space key + comma
        vim.keymap.set("n", "<Space>,", "<Plug>(emmet-expand-abbr)", {})
    end,
    ft = { "html", "css", "javascript", "typescript", "vue", "svelte" },
}
