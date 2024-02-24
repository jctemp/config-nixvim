{...}: {
  imports = [
    ./cmp.nix
    ./lsp.nix
    ./fidget.nix
    ./lualine.nix
    ./options.nix
    ./startup.nix
    ./telescope.nix
    ./treesitter.nix
    ./trouble.nix
    ./typst-vim.nix
    ./wilder.nix
  ];

  enableMan = true;
  globals.mapleader = " ";
  colorschemes.rose-pine.enable = true;
  clipboard.register = "unnamedplus";
  keymaps = [
    # Enter explorer
    {
      mode = "n";
      key = "<leader>e";
      action = "<CMD>:E<CR>";
    }
    # Move and indent
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
    }
    {
      # Format file
      key = "<leader>ff";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
    }
    {
      mode = "n";
      key = "J";
      action = "mzJ`z";
    }
    {
      mode = "x";
      key = "<leader>p";
      action = "[[\"_dP]]";
    }
    {
      mode = ["n" "v"];
      key = "<leader>y";
      action = "[[\"+y]]";
    }
    {
      mode = "n";
      key = "Q";
      action = "<nop>";
    }
  ];
}
