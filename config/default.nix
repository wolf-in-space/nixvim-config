{ pkgs, nix-colors, lib, extraLib, ... }: {
  imports = [
    #./lib
    ./cmp.nix
    ./lsp.nix
    ./editing.nix
    ./theming.nix
    ./fileNavigation.nix
  ];

  config = {
    clipboard = {
      register = "unnamedplus";
      providers = {
        xclip.enable = true;
        wl-copy.enable = true;
      };
    };

    keymaps = with extraLib; [
      (key "-" "Oil --float")
      (key "<C-s>" "w")
      (key "<leader>f" "Telescope frecency workspace=CWD")
      (key "<leader>p" "Telescope projects")

      # Start tmux panes / windows with nvim cwd
      (key "<leader>ty" "!tmux splitw -h")
      (key "<leader>tx" "!tmux splitw -v")
      (key "<leader>ta" "!tmux new-window")

      # Start tmux lazygit panes / windows with nvim cwd
      (key "<leader>tgy" "!tmux splitw -h lazygit")
      (key "<leader>tgx" "!tmux splitw -v lazygit")
      (key "<leader>tga" "!tmux new-window lazygit")
    ];
  };
}
