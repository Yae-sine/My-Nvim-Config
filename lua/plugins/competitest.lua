return {
  "xeluxee/competitest.nvim",
  dependencies = "MunifTanjim/nui.nvim",
  config = function()
    require("competitest").setup({
      testcases_directory = "Test_cases/",
      template_file = "/home/yassine/.config/nvim/templates/template.cpp",
      received_problems_path = "/home/yassine/Documents/My Data/playground/CP_LEET/Problems/$(PROBLEM).$(FEXT)",
      received_contests_directory = "/home/yassine/Documents/My Data/playground/CP_LEET/Contests/",
      received_contests_problems_path = "/home/yassine/Documents/My Data/playground/CP_LEET/$(PROBLEM).$(FEXT)",
    })
  end,
}
