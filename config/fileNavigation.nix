{ pkgs, extraLib, ... }: {
  config = {
    extraPlugins = with pkgs.vimPlugins; [
      direnv-vim
    ];

    options = {
      swapfile = false;
      undofile = true;
    };

    keymaps = with extraLib; [
      (key "-" "Oil --float")
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

    plugins = {
      oil = {
        enable = true;
        columns.icon.enable = true;
        float.padding = 5;
        #viewOptions.showHidden = true;
      };

      tmux-navigator = {
        enable = true;
        tmuxNavigatorNoWrap = 1;
      };

      project-nvim = {
        enable = true;
        patterns = [ ".git" ".obsidian" "package.json" ];
      };

      telescope = {
        enable = true;
        extensions = {
          frecency.enable = true;
          fzf-native.enable = true;
        };
      };
    };
  };
}
