return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      -- This targets the 'files' source, which is used by LazyVim.pick("files")
      sources = {
        files = {
          -- Set 'hidden' to true to include hidden files (starting with '.')
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
