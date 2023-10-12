vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    -- ===== Packer
    -- https://github.com/wbthomason/packer.nvim
    use 'wbthomason/packer.nvim'

    -- ===== Telescope
    -- https://github.com/nvim-telescope/telescope.nvim
    use {
	'nvim-telescope/telescope.nvim', tag = '0.1.3',
	-- or, branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- ===== Catppuccin theme
    -- https://github.com/catppuccin/nvim
    use { "catppuccin/nvim", as = "catppuccin" }

    -- ===== treesitter
    -- https://github.com/nvim-treesitter/nvim-treesitter
    use {
	'nvim-treesitter/nvim-treesitter',
	run = function()
	    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
	    ts_update()
	end,
    }

    -- ===== nvim web dev icons
    -- https://github.com/nvim-tree/nvim-web-devicons
    use 'nvim-tree/nvim-web-devicons'

    -- ===== lualine
    -- https://github.com/nvim-lualine/lualine.nvim
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons'}
    }

    -- ===== ident-blankline
    -- https://github.com/lukas-reineke/indent-blankline.nvim
    use {"lukas-reineke/indent-blankline.nvim"}

    -- ===== ident-blankline
    -- https://github.com/nvim-neo-tree/neo-tree.nvim
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", 
            "MunifTanjim/nui.nvim",
        }
    }

    -- ===== conquer of completion
    -- https://github.com/neoclide/coc.nvim
    use {'neoclide/coc.nvim', branch = 'release'}

    -- ===== markdown-preview
    -- https://github.com/iamcco/markdown-preview.nvim
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

end)
