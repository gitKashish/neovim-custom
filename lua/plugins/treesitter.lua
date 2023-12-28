return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate", 
    config = function()
        highlight = { enable = true }
        indent = { enable = true }
    end
}
