return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- config = function()
    --   vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = "#FFFFFF" })
    init = function()
      vim.api.nvim_create_autocmd("BufEnter", {
        group = vim.api.nvim_create_augroup("Neotree_start_directory", { clear = true }),
        desc = "Start Neo-tree with directory",
        once = true,
        callback = function()
          -- Customize here the highlights of neo-tree
          -- vim.cmd([[
          -- hi NeoTreeNormal guibg=#000
          -- hi NeoTreeNormalNC guibg=#000
          -- ]])
          -- vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = "#FFFFFF" })
          --
          local palette = require("colors")
          -- set popup border color
          -- vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { bg = "#1E1F21" })
          -- vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { bg = "#1E1F21" })
          -- vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { bg = "#1E1F21" })
          -- set cursor bg color
          vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = palette.bg_light_highlight })
          -- set general bg when active and not
          vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = palette.bg_light })
          vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = palette.bg_light })
          if package.loaded["neo-tree"] then
            return
          else
            local stats = vim.uv.fs_stat(vim.fn.argv(0))
            if stats and stats.type == "directory" then
              require("neo-tree")
            end
          end
        end,
      })
    end,
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
    config = function(_, opts)
      local function on_move(data)
        Snacks.rename.on_rename_file(data.source, data.destination)
      end

      local events = require("neo-tree.events")
      opts.event_handlers = opts.event_handlers or {}
      vim.list_extend(opts.event_handlers, {
        { event = events.FILE_MOVED, handler = on_move },
        { event = events.FILE_RENAMED, handler = on_move },
        -- Hide cursor
        -- {
        --   event = events.NEO_TREE_BUFFER_ENTER,
        --   handler = function()
        --     vim.cmd("highlight! Cursor blend=100")
        --   end,
        -- },
        -- {
        --   event = events.NEO_TREE_BUFFER_LEAVE,
        --   handler = function()
        --     vim.cmd("highlight! Cursor guibg=#5f87af blend=0")
        --   end,
        -- },
      })
      require("neo-tree").setup(opts)
      vim.api.nvim_create_autocmd("TermClose", {
        pattern = "*lazygit",
        callback = function()
          if package.loaded["neo-tree.sources.git_status"] then
            require("neo-tree.sources.git_status").refresh()
          end
        end,
      })
    end,
  },
}
