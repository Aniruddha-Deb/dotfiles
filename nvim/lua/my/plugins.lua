local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
vim.api.nvim_create_autocmd(
    "BufWritePost",
    { command = "source <afile> | PackerCompile", group = packer_group, pattern = "init.lua" }
)

return require('packer').startup(function(use)
    
    -- Packer manages itself
    use 'wbthomason/packer.nvim'

    -- Theme
    use {
        'tanvirtin/monokai.nvim',
        config = function() require('monokai').setup() end
    }

    -- Feline and Bufferline
    use { 
        'feline-nvim/feline.nvim',
        tag = 'v1.1.3',
        config = function() require('feline').setup() end -- maybe change this later
    }
    use {
        'akinsho/bufferline.nvim',
        tag = '*',
        config = function() require('my.plugins.bufferline') end
    }

    -- web-devicons for filetypes
    use {
        'nvim-tree/nvim-web-devicons',
        config = function() require('nvim-web-devicons').setup() end
    }

    -- gitsigns
    use {
        'lewis6991/gitsigns.nvim',
        tag = 'v0.7',
        config = function() require('gitsigns').setup() end
    }

    -- Tree sitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require('my.plugins.treesitter') end
    }

    -- Neovim LSP configs
    use 'neovim/nvim-lspconfig'
    
    -- required plugins for vim-cmp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    -- a snippet engine (nvim-cmp needs it)
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- competitive programming
    use {
        'neov5/competitest.nvim',
	requires = 'MunifTanjim/nui.nvim',
	config = function() require('my.plugins.competitest') end
    }

    
    -- Completion engine
    use {
       'hrsh7th/nvim-cmp',
       config = function() require('my.plugins.cmp') end
    }

    -- VimTeX
    use {
        'lervag/vimtex',
        config = function() require('my.plugins.vimtex') end
    }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = 'nvim-lua/plenary.nvim'
    }

    -- -- Nvim tree
    use {
        'kyazdani42/nvim-tree.lua',
        config = function() require('nvim-tree').setup() end
    }

end)
