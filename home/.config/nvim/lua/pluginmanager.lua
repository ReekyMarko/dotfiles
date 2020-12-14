local fn = vim.fn
local cmd = vim.cmd

-- Install packer if it's not yet installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
local packer_not_installed = fn.empty(fn.glob(install_path))

if packer_not_installed > 0 then
	print('Packer is not installed, cloning it now...')
	cmd ('silent !git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

-- Configure packer
cmd 'packadd packer.nvim'
require('packer').startup(function()

	-- The plugin manager itself
	use {'wbthomason/packer.nvim', opt = true}

	-- Colorscheme
	use 'joshdick/onedark.vim'

	-- Custom status and tabline
	use 'vim-airline/vim-airline'

	-- Tree explorer
	use 'scrooloose/nerdtree'

	-- Fuzzy finder
	use 'junegunn/fzf'
	use 'junegunn/fzf.vim'

	-- Do stuff as sudo
	use 'lambdalisue/suda.vim'

	-- Configs for built-in LSP
	use 'neovim/nvim-lspconfig'

	-- Completion framework
	use 'nvim-lua/completion-nvim'
end)

-- Install plugins if packer was not installed
if packer_not_installed > 0 then
	cmd 'PackerInstall'
end
