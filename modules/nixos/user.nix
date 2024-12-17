{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.genga = {
    isNormalUser = true;
    description = "genga";
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
      "libvirtd"
    ];
    packages = with pkgs; [
      # terminals
      waveterm
      alacritty
      starship
      zellij

      #editors
      zed-editor
      vscode

      # cli tools
      lazydocker
      gomanagedocker
      dblab
      lazygit
      atac
      tree
      jq
      postgresql_16_jit
      rye
      devbox
      gh
      yq
      ngrok
      zrok

      # gnome theme dependencies
      gtk-engine-murrine
      gnome-themes-extra

      #language servers
      nil
      nixd

      # hyprland dependencies
      swww
      sassc
      fd
      dart-sass
      wl-clipboard
      hyprpicker
      swayosd
      swaynotificationcenter
      eww
      blueman
      sox
      grim
      slurp
      hyprpaper
      rofi-wayland
      brightnessctl
      libnotify
      wf-recorder
      hyprlauncher

      #others
      jetbrains-toolbox
      gnome-boxes
      keypunch
      (callPackage "/home/genga/nix_config/modules/nixos/yuckls.nix" { })
    ];
  };
}
