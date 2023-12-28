return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<C-\>]],
            direction = "horizontal",
            shading_factor = "1",
            shade_terminals= true,
            start_in_insert = true,
        })
    end
}
