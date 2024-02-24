{
  plugins = {
    cmp-nvim-lsp.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    cmp-cmdline.enable = true;
    luasnip.enable = true;

    nvim-cmp = {
      enable = true;
      autoEnableSources = true;
      formatting = {
        fields = ["menu" "kind" "abbr"];
        format = ''
          function(entry, item)
            local menu_icon = {
              nvim_lsp = "lsp",
              luasnip = "snip",
              buffer = "buf",
              nvim_lua = "lua",
              path = "path"
            }

            item.menu = menu_icon[item.kind] or ""
            return item
          end
        '';
      };
      mapping = {
        "<C-p>" = "cmp.mapping.select_prev_item()";
        "<C-n>" = "cmp.mapping.select_next_item()";
        "<C-y>" = "cmp.mapping.confirm({ select = true })";
        "<C-e>" = "cmp.mapping.abort()";
        "<C-Space>" = "cmp.mapping.complete()";
        "<CR>" = "cmp.mapping.confirm({ select = false })";
      };
      snippet.expand = "luasnip";
      sources = [
        {name = "nvim_lsp";}
        {name = "luasnip";}
        {name = "path";}
        {name = "buffer";}
      ];
      window = {
        completion = {
          border = "rounded";
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None";
        };
        documentation = {
          border = "rounded";
        };
      };
    };
  };
}
