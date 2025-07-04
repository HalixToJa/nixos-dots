{ pkgs, ...}: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
    discord
    librewolf-bin
    
    # cli
    helix
    fastfetch
    git
    wget
    btop
    brightnessctl
    linuxKernel.packages.linux_6_15.cpupower  
    bash

    #kde
    kdePackages.kdeconnect-kde
    kdePackages.konsole

    #core
    home-manager
  ];

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-color-emoji
    noto-fonts-lgc-plus
  ];
}
