{ pkgs, ... }: {
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };

  programs.steam.package = pkgs.steam.override {
    withPrimus = true;
    extraPkgs = pkgs: [ bumblebee glxinfo ];
  };
}
