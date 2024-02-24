{
  # https://nix-community.github.io/nixvim/plugins/startup/index.html
  plugins.startup = {
    enable = true;

    extraOptions = {
      mapping_keys = true;
      cursor_column = 0.5;
      empty_lines_between_mappings = true;
      disable_statusline = true;
      padding = [1 2];
    };

    sections = {
      header = {
        type = "text";
        align = "center";
        foldSection = false;
        title = "Header";
        margin = 5;
        content = [
          "█▄ █ █ ▀▄▀ █ █ █ █▀▄▀█"
          "█ ▀█ █ █ █ ▀▄▀ █ █ ▀ █"
        ];
        highlight = "Statement";
        defaultColor = "";
        oldfilesAmount = 0;
      };
      body = {
        type = "mapping";
        align = "center";
        foldSection = false;
        title = "Commands";
        margin = 5;
        content = [
          [
            "Find Files"
            "lua require'telescope.builtin'.find_files{}"
            "<leader>sf"
          ]
          [
            "Search Word"
            "lua require'telescope.builtin'.live_grep{}"
            "<leader>sw"
          ]
          [
            "File Explorer"
            "Explore"
            "<leader>e"
          ]
          [
            "Help Tags"
            "lua require'telescope.builtin'.help_tags{}"
            "<leader>sh"
          ]
          [
            "New File"
            "lua require'startup'.new_file()"
            "<leader>nf"
          ]
        ];
        highlight = "String";
        defaultColor = "";
        oldfilesAmount = 0;
      };
    };

    parts = [
      "header"
      "body"
    ];

    userMappings = {
      "<leader>sf" = "<cmd>Telescope find_files<CR>";
      "<leader>sw" = "<cmd>Telescope live_grep<CR>";
      "<leader>e" = "<cmd>Explore<CR>";
      "<leader>sh" = "<cmd>Telescope help_tags<CR>";
      "<leader>nf" = "<cmd>DashboardNewFile<CR>";
    };
  };
}
