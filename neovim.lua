return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        -- Kept your original background colors
        bg                   = "#1c2d28",
        dark_bg              = "#15221e",
        darker_bg            = "#0e1714",
        lighter_bg           = "#33423e",

        -- Lighter Text
        fg                   = "#F1F5E1", -- Brighter cream
        dark_fg              = "#B8BEA9",
        light_fg             = "#FFFFFF", -- Pure white
        bright_fg            = "#F8FAF0",
        muted                = "#557C6F", -- Lifted from original green but lighter

        -- Pastel Palette (Softer, punchier colors)
        red                  = "#F2A6AF", -- Pastel Red
        yellow               = "#E9EDC0", -- Soft Yellow
        orange               = "#F5C2A5", -- Peach
        green                = "#B5EAD7", -- Mint
        cyan                 = "#A0CED9", -- Sky
        blue                 = "#97C1E7", -- Soft Blue
        purple               = "#DDC4F2", -- Lavender
        brown                = "#C1A5A9",

        bright_red           = "#FFB7C5",
        bright_yellow        = "#F4F7D0",
        bright_green         = "#C7F9CC",
        bright_cyan          = "#B9E2EC",
        bright_blue          = "#A9DEF9",
        bright_purple        = "#EAD1FF",

        -- Matching original layout with updated colors
        accent               = "#B5EAD7",
        cursor               = "#FFFFFF",
        foreground           = "#F1F5E1",
        background           = "#1c2d28",
        selection            = "#33423e",
        selection_foreground = "#FFFFFF",
        selection_background = "#33423e",
      },
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
