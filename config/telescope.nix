{
  # https://nix-community.github.io/nixvim/plugins/treesitter/index.html
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>gf" = {
        action = "git_files";
        desc = "Search [G]it [F]iles";
      };
      "<leader>sf" = {
        action = "find_files";
        desc = "[S]earch [F]iles";
      };
      "<leader>sh" = {
        action = "help_tags";
        desc = "[S]earch [H]elp";
      };
      "<leader>sw" = {
        action = "grep_string";
        desc = "[S]earch current [W]ord";
      };
      "<leader>sg" = {
        action = "live_grep";
        desc = "[S]earch by [G]rep";
      };
      "<leader>sd" = {
        action = "diagnostics";
        desc = "[S]earch [D]iagnostics";
      };
      "<leader>sr" = {
        action = "resume";
        desc = "[S]earch [R]resume";
      };
    };
  };
}
