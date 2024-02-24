{
  # https://nix-community.github.io/nixvim/plugins/lualine/index.html
  plugins.lualine = {
    enable = true;
    alwaysDivideMiddle = true;
    extensions = ["quickfix"];
    globalstatus = true;
    iconsEnabled = false;
    theme = "auto";
  };
}
