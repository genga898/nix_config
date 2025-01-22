{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    ghostty = {
      url = "github:ghostty-org/ghostty";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # add grimblast for screenshot
    hyprland-contrib = {
      url = "github:hyprwm/contrib";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland-qtutils.url = "github:hyprwm/hyprland-qtutils";

    nixd.url = "github:nix-community/nixd";

    #nix-index
    nix-index-database.url = "github:nix-community/nix-index-database";
    nix-index-database.inputs.nixpkgs.follows = "nixpkgs";

    # hyprcursor theme
    rose-pine-hyprcursor.url = "github:ndom91/rose-pine-hyprcursor";
  };

  outputs =
    {
      self,
      nixpkgs,
      ghostty,
      home-manager,
      hyprland-qtutils,
      nixd,
      nix-index-database,
      ...
    }@inputs:
    {
      nixosConfigurations.genga = nixpkgs.lib.nixosSystem {
        specialArgs = {
          inherit inputs;
        };
        modules = [
          ./hosts/default/configuration.nix
          {
            environment.systemPackages = [
              ghostty.packages.x86_64-linux.default
              hyprland-qtutils.packages.x86_64-linux.default
              nixd.packages.x86_64-linux.default
            ];
          }
          home-manager.nixosModules.default
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.genga = import ./hosts/default/home.nix;
          }
          nix-index-database.nixosModules.nix-index
        ];
      };
    };
}
