require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "markdown",
    "yaml",
    "c",
    "cpp",
    "python",
    "json",
  },
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = false,
    disable = {},
  },
  autotag = {
    enable = true
  },
})
