return {
  -- Add the vinyl.nvim plugin and force it to load immediately
  {
    "kamil-stachowski/vinyl.nvim",
    lazy = false,
    priority = 1000,
  },

  -- Configure LazyVim to load vinyl
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vinyl",
    },
  },
}
