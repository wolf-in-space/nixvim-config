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

  };
}
