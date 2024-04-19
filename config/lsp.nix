{
  # https://nix-community.github.io/nixvim/plugins/lsp/index.html
  plugins = {
    lsp = {
      enable = true;
      capabilities = "offsetEncoding = 'utf-16'";
      keymaps = {
        diagnostic = {
          "<leader>j" = "goto_next";
          "<leader>k" = "goto_prev";
        };
        lspBuf = {
          K = "hover";
          gd = "definition";
          gi = "implementation";
          gt = "type_definition";
          "<leader>rr" = "references";
          "<leader>rn" = "rename";
          "<leader>ca" = "code_action";
          "<C-h>" = "signature_help";
        };
      };
      servers = {
        clangd.enable = true;
        cmake.enable = true;
        cssls.enable = true;
        dockerls.enable = true;
        gopls.enable = true;
        html.enable = true;
        htmx.enable = true;
        java-language-server.enable = true;
        jsonls.enable = true;
        marksman.enable = true;
        nil_ls = {
          enable = true;
          settings.formatting.command = ["alejandra"];
        };
        pyright.enable = true;
        rust-analyzer = {
          enable = true;
          installCargo = true;
          installRustc = true;
          settings = {
            checkOnSave = true;
            check.command = "clippy";
            procMacro.enable = true;
          };
        };
        tailwindcss.enable = true;
        taplo.enable = true;
        tsserver.enable = true;
        typst-lsp.enable = true;
        yamlls.enable = true;
        zls.enable = true;
      };
    };
    lsp-format = {
      enable = true;
    };
  };
}
