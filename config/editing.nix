{ extraLib, ... }: {
  config = {
    options = {
      number = true;
      relativenumber = true;
      autoindent = true;
      smartindent = true;
    };

    globals = {
      mapleader = " ";
    };

    keymaps = with extraLib; [
      (key "<C-s>" "w")
      (keyI "<C-s>" "w")
    ];

    plugins = {
      gitsigns.enable = true;
      nvim-autopairs.enable = true;
      comment-nvim.enable = true;
    };
  };
}
