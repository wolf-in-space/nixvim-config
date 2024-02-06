{
  plugins = {
    nvim-cmp = {
      enable = true;
      snippet.expand = "luasnip";
      completion.completeopt = "noselect";
      preselect = "None";
      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; } #For luasnip users.
        { name = "path"; }
        { name = "buffer"; }
      ];
      mapping = {
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-e>" = "cmp.mapping.close()";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<S-Tab>" = {
          action = "cmp.mapping.select_prev_item()";
          modes = [ "i" "s" ];
        };
        "<Tab>" = {
          action = "cmp.mapping.select_next_item()";
          modes = [ "i" "s" ];
        };
      };
    };
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-cmdline.enable = true;
    cmp-nvim-lsp.enable = true;
    luasnip.enable = true;
  };
}
