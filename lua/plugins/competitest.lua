return {
  "xeluxee/competitest.nvim",
  dependencies = "MunifTanjim/nui.nvim",
  config = function()
    require("competitest").setup({
      testcases_directory = "Test_cases/",
      received_files_extension = "cpp",
      template_file = {
        cpp = "/home/yassine/.config/nvim/templates/template.cpp",
        py = "/home/yassine/.config/nvim/templates/template.py",
      },
      received_problems_path = "/home/yassine/Documents/My Data/playground/CP_LEET/Problems/Codeforces/$(PROBLEM).$(FEXT)",
      received_contests_directory = "/home/yassine/Documents/My Data/playground/CP_LEET/Contests/",
      received_contests_problems_path = "/home/yassine/Documents/My Data/playground/CP_LEET/Contests/$(CONTEST)/$(PROBLEM).$(FEXT)",
    })
  end,
}
