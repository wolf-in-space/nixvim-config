{ pkgs, ... }: {
  config = {
    options = {
      conceallevel = 1; #for markdown in editor override preview -> obsidian
    };

    extraPlugins = with pkgs.vimPlugins; [
      plenary-nvim
    ];

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
      };

      #RUST
      rust-tools = {
        enable = true;
        inlayHints.onlyCurrentLine = true;
      };
      crates-nvim.enable = true;
    };
  };
}
