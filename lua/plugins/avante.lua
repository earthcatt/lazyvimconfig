return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  opts = {
    provider = "gemini",
    providers = {
      gemini = {
        model = "gemini-3.5-flash-lite",

        timeout = 30000,
        temperature = 0,
        max_tokens = 4096,
      },
    },
    input = {
      provider = "dressing",
    },
  },
  build = "make",
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    "MeanderingProgrammer/render-markdown.nvim",
    "ColinKennedy/mega.cmdparse",
    "ColinKennedy/mega.logging",
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          create_image_folder = false,
        },
      },
    },
  },
}
