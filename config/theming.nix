{ pkgs, ... }: {
  config = {
    colorschemes.catppuccin.enable = true;

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
      };

      treesitter = {
        enable = true;
        nixvimInjections = true;
        indent = true;
      };
    };
  };
}
