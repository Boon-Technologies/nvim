-- Use Packer as the plugin manager
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'tpope/vim-sensible'
    use { 'Exafunction/codeium.vim', branch = 'main' }
    use 'nvim-lua/plenary.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.8' }
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use { 'catppuccin/nvim', as = 'catppuccin' }
    use { 'akinsho/toggleterm.nvim', tag = 'v2.12.0' }
    use {'nvim-treesitter/nvim-treesitter',  run = ":TSUpdate" }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
end)

