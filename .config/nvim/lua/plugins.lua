-- Install packer automatically for the sake of new setups
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP (need for godot)
  use { 'neoclide/coc.nvim', branch = "release" } -- Nvim LSP for anything but godot.
  use 'habamax/vim-godot' --various godot functions
end)
