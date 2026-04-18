return {
  {
    "bjarneo/aether.nvim",
    name = "aether",
    priority = 1000,
    opts = {
      disable_italics = false,
      colors = {
        -- Monotone shades (base00-base07)
        base00 = "#1c2d28",         -- Default background
        base01 = "#2a3d36",         -- Lighter background (status bars)
        base02 = "#5C8373",         -- Selection background
        base03 = "#768A74",         -- Comments, invisibles
        base04 = "#94A88E",         -- Dark foreground
        base05 = "#D4DABA",         -- Default foreground
        base06 = "#D4F0DD",         -- Light foreground
        base07 = "#AFBD9B",         -- Light background/alt foreground

        -- Accent colors (base08-base0F)
        base08 = "#bf616a",         -- Variables, errors, red
        base09 = "#A5B396",         -- Integers, constants, orange/yellow
        base0A = "#B2C6A9",         -- Classes, types, bright yellow
        base0B = "#6B8C78",         -- Strings, green
        base0C = "#768A74",         -- Support, regex, cyan
        base0D = "#80957B",         -- Functions, keywords, blue
        base0E = "#b48ead",         -- Keywords, storage, magenta
        base0F = "#A5B396",         -- Deprecated, brown/yellow
      },
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")
      vim.o.background = "dark"
      -- Enable hot reload
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
