return {

  {
    "kawre/leetcode.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- Required by telescope
      "MunifTanjim/nui.nvim",
    },
    opts = {
      lang = "python", -- or "java"
    },


    config = function(_, opts)
      require("leetcode").setup(opts)
      
      -- Set up autocommand to enable manual folding for LeetCode files
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "python", -- or whatever filetype your leetcode files use
        callback = function()
          -- Only apply to leetcode files (check if @leet is in the file)
          local first_lines = vim.api.nvim_buf_get_lines(0, 0, 20, false)
          local is_leetcode = false
          for _, line in ipairs(first_lines) do
            if line:match("@leet") then
              is_leetcode = true
              break
            end
          end
          
          if is_leetcode then
            vim.opt_local.foldmethod = "manual"
            vim.opt_local.foldlevel = 99
          end
        end,
      })
    end,
  },


}
