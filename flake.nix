  {
    description = "Your nix flake";

    inputs = {
      nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
      nixarr.url = "github:rasmus-kirk/nixarr";
    };

    outputs = { 
      nixpkgs,
      nixarr,
      ...
    }@inputs: {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";

          modules = [
            ./nixos/servarr/configuration.nix
            nixarr.nixosModules.default
          ];

          specialArgs = { inherit inputs; };
        };
      };
    };
  }
