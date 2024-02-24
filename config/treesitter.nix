{pkgs, ...}: {
  # https://nix-community.github.io/nixvim/plugins/treesitter/index.html
  plugins.treesitter = {
    enable = true;
    nixGrammars = true;
    indent = true;

  };
  plugins.treesitter-context = {
    enable = true;
    lineNumbers = true;
  };
}
