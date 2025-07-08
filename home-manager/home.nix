{ config, pkgs, nil, ... }: {
  home = {
    username = "halix";
    homeDirectory = "/home/halix";
    stateVersion = "25.05";
  };

  imports = [
    ./modules/bundle.nix
  ];
}
