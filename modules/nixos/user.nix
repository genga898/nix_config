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
      alacritty
      starship

      #editors
      zed-editor
      vscode

      # Lsp
      eslint
      biome
      tailwindcss-language-server
      typescript-language-server
      typescript

      # cli tools
      lazydocker
      gomanagedocker
      dblab
      atac
      tree
      jq
      postgresql_16_jit
      rye
      devbox
      gh
      yq
      ripgrep
      ngrok
      zrok
      zoxide
      socat
      tailwindcss

      # gnome theme dependencies
      gtk-engine-murrine
      gnome-themes-extra

      # hyprland dependencies
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
      walker

      #others
      keypunch
      obsidian
      (callPackage "/home/genga/nix_config/modules/nixos/yuckls.nix" { })
    ];
  };
}
