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
    extraPackages = with pkgs; [
      ripgrep fd gcc
    ];

    clipboard = {
      register = "unnamedplus";
      providers = {
        xclip.enable = true;
        wl-copy.enable = true;
      };
    };
  };
}
