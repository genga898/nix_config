{ pkgs, inputs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

    #hyprland dependencies
    inputs.rose-pine-hyprcursor.packages.${pkgs.system}.default
    inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
    networkmanagerapplet

    # nix formatter
    nixfmt-rfc-style

    # cli tools
    wget
    bat
    git

    # fonts
    jetbrains-mono
    nerd-fonts.iosevka
    nerd-fonts.fira-mono
    nerd-fonts.noto
    nerd-fonts.fira-code
    nerd-fonts.zed-mono
    nerd-fonts.jetbrains-mono

    # themes
    whitesur-icon-theme
    whitesur-gtk-theme
    whitesur-cursors
    kanagawa-gtk-theme

    # gnome
    gnome-tweaks
    gnomeExtensions.dash-to-dock
    gnome-software
    gnome-network-displays
    font-manager

    #browsers
    vivaldi

    flatpak

    # neovim and its dependencies
    neovim
    gcc
    unzip

    jetbrains-toolbox
  ];
}
