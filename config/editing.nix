{ extraLib, ... }: {
  config = {
    options = {
      number = true;
      relativenumber = true;
    };

    globals = {
      mapleader = " ";
      maplocalleader = " ";
      #shiftwidth = 4;
      #tabstop = 4;
    };

    keymaps = with extraLib; [
      (key "<C-s>" "w")
    ];

    plugins = {
      gitsigns.enable = true;

      nvim-autopairs.enable = true;
      comment-nvim = {
        enable = true;
        toggler = {
          line = "<leader>o";
          block = "<leader>O";
        };
      };
    };
  };
}
