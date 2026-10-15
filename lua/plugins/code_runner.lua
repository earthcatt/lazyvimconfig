return {
  {
    "CRAG666/code_runner.nvim",
    dependencies = {
      "akinsho/toggleterm.nvim",
    },
    cmd = { "RunCode", "RunFile", "RunClose" },

    config = function()
      require("toggleterm").setup({
        direction = "horizontal",
        size = 12,
      })

      require("code_runner").setup({
        mode = "toggleterm",
        focus = false,
        startinsert = false,

        filetype = {
          python = "python3 -u $file",
          cpp = "cd $dir && g++ -std=c++17 $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
        },
      })

      vim.keymap.set("n", "<F5>", function()
        vim.cmd("write")
        vim.cmd("RunCode")
      end, {
        desc = "Run Code",
        silent = true,
      })
    end,
  },
}
