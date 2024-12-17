{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      set -gx EDITOR nvim
      set -gx PATH $PATH ~/.local/bin/
      set -gx PATH $PATH ~/.local/opt/
      set -gx PATH $PATH ~/.waveterm/bin/
      set -gx PATH $PATH ~/.rye/tools/posting/bin/

    '';
    shellAbbrs = {
      ".." = "cd ..";
    };

    shellAliases = {
      ls = "tree -L1 -C";
      nixpkgs = "cd ~/Documents/nixpkgs";
      c = "clear";

      # abbreviate nix commands
      n = "nix";
      nd = "nix develop";
      nb = "nix-build";
      nr = "nix run";
      ns = "nix-shell";
      nrp = "nix repl";
      nfu = "nix flake update";
      nswitch = "nixos-rebuild switch --flake /home/genga/nix_config/#genga";
      ntest = "nixos-rebuild test --flake /home/genga/nix_config/#genga";

      # launch terminal tools
      nv = "nvim";
      db = "dblab";
      go_md = "gomanagedocker";
      lazyt = "lazygit";
      zel = "zellij";

      # docker
      docker_cu = "docker compose up";
      docker_cb = "docker compose build";

      # git
      gi = "git init";
      gb = "git branch";
      ga = "git add";
      gp = "git push";
      gc = "git commit";
      gr = "git rebase";
      gs = "git stash";
      gsp = "git stash pop";
      gch = "git checkout";
      gpl = "git pull";

      # devbox
      dev_in = "devbox init";
      devsh = "devbox shell";
      devdir = "devbox generate direnv";
      dev_u = "devbox update";
      dev_rm = "devbox rm";
      devadd = "devbox add";
    };
  };
}
