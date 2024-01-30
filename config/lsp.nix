{
  plugins = {
    lsp = {
      enable = true;
      keymaps.lspBuf = {
        "<leader>lh" = "hover";
        "<leader>ld" = "definition";
        "<leader>li" = "implementation";
        "<leader>lf" = "format";
        "<leader>lr" = "rename";
        "<leader>la" = "code_action";
      };
      servers = {
        rnix-lsp.enable = true; #nix
        pyright.enable = true; #python
        tsserver.enable = true; #typescript
        java-language-server.enable = true; #java
      };
    };
    none-ls.enable = true;

    nix.enable = true;
    obsidian = {
      enable = true;
      workspaces = [
        {
          name = "Main";
          path = "~/Obsidian/Main";
        }
      ];
    };
    markdown-preview = {
      enable = true;
      autoStart = true;

    };

    #RUST
    rust-tools = {
      enable = true;
      inlayHints.onlyCurrentLine = true;
    };
    crates-nvim.enable = true;
  };
}
