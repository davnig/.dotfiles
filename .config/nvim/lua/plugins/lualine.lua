return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      local function diff_source()
        local gitsigns = vim.b.gitsigns_status_dict
        if gitsigns then
          return {
            added = gitsigns.added,
            modified = gitsigns.changed,
            removed = gitsigns.removed,
          }
        end
      end

      local function parent_folder()
        local current_buffer = vim.api.nvim_get_current_buf()
        local current_file = vim.api.nvim_buf_get_name(current_buffer)
        local parent = vim.fn.fnamemodify(current_file, ":h:t")
        if parent == "." then
          return ""
        end
        return parent .. "/"
      end

      local function get_current_filename()
        local bufname = vim.api.nvim_buf_get_name(0)
        return bufname ~= "" and vim.fn.fnamemodify(bufname, ":t") or ""
      end

      local palette = require("colors")
      local text_hl = { fg = palette.gray3 }
      local icon_hl = { fg = palette.gray4 }

      local theme = require("lualine-theme")

      opts.options.theme = theme
      opts.options.section_separators = { left = " ", right = " " }
      opts.options.component_separators = { left = "", right = "" }
      opts.options.disabled_filetypes = { "packer", "neo-tree" }
      opts.sections = {
        lualine_a = {
          {
            "mode",
            icon = { "" },
            -- add rounded separator at the start
            separator = { right = " ", left = "" },
          },
        },
        lualine_b = {
          {
            "branch",
            icon = { " " },
          },
          {
            "diff",
            icon = { "  " },
            source = diff_source,
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            },
            padding = { right = 2 },
          },
        },
        lualine_c = {
          {
            parent_folder,
            icon = { "   " },
            separator = "",
            padding = 0,
          },
          {
            get_current_filename,
            separator = " ",
            padding = 0,
          },
        },

        lualine_x = {
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = { error = " ", warn = " ", info = " ", hint = "󱤅 ", other = "󰠠 " },
            colored = true,
            padding = 2,
          },
          {
            "lsp_status",
            padding = 1,
            icon = { " " },
          },
        },
        lualine_y = {},
        lualine_z = {
          {
            "location",
            icon = { "", align = "left" },
          },
          {
            "progress",
            icon = { "", align = "left" },
            -- add rounded separator at the end
            separator = { right = "", left = "" },
          },
        },
      }

      return opts
    end,
  },
}
