-- "opt": plugin is optional - https://github.com/wbthomason/packer.nvim#specifying-plugins
--

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- package manager
  use 'ms-jpq/chadtree' -- file viewer
  use { 'neoclide/coc.nvim', branch = "release" } -- Configurations for Nvim LSP
  use 'habamax/vim-godot' --various godot functions
  use 'gennaro-tedesco/nvim-peekup' -- better registers
end)
