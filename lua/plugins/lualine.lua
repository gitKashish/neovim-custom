return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    options = {
        theme = 'onedark',
        globalstatus = true
    },
    config = function()
        require("lualine").setup()
    end
}
