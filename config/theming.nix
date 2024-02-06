{ pkgs, ... }: {
  config = {
    colorschemes.catppuccin = {
      enable = true;
      transparentBackground = true;
    };

    extraPlugins = with pkgs.vimPlugins; [
      nvim-web-devicons
    ];

    options = {
      timeout = true; # needed for which-key
      timeoutlen = 250; # needed for which-key
    };

    plugins = {
      lualine = {
        enable = true;
      };

      which-key.enable = true;
      lsp-lines.enable = true;

      noice = {
        enable = true;
        lsp.override = {
          "vim.lsp.util.convert_input_to_markdown_lines" = true;
          "vim.lsp.util.stylize_markdown" = true;
          "cmp.entry.get_documentation" = true;
        };
      };
      notify.enable = true;

      treesitter = {
        enable = true;
        nixvimInjections = true;
        indent = true;
      };
    };
  };
}
