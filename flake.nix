{
  description = "Media Server with Nixarr";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixarr.url = "github:rasmus-kirk/nixarr";
  };
  
  outputs = { nixpkgs, nixarr, ... }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          nixarr.nixosModules.default
        ];
      };
    };
  };
}
