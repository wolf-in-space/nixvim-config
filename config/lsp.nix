{ pkgs, extraLib, ... }: {
  config = {
    options = {
      conceallevel = 1; #for markdown in editor override preview -> obsidian
    };

    extraPackages = with pkgs; [
      lldb
    ];

    extraPlugins = with pkgs.vimPlugins; [
      plenary-nvim
    ];

    
    keymaps = with extraLib; [
      (key "<leader>dc" "DapContinue")
      (key "<leader>db" "DapToggleBreakpoint")
      (key "<leader>dt" "DapTerminate")
      (key "<leader>ds" "DapStepOver")
      (key "<leader>di" "DapStepInto")
      (key "<leader>dr" "DapStepOut")

      (key "<leader>du" "lua require('dapui').toggle()")
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
      rustaceanvim = {
        enable = true;
        dap.autoloadConfigurations = true;
      };
      crates-nvim.enable = true;

      #DEBUGGING
      dap = {
        enable = true;
        extensions.dap-ui.enable = true;
      };
    };
  };
}
