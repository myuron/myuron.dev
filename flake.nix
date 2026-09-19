{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    nix-vite-plus.url = "github:ryoppippi/nix-vite-plus";
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      flake-parts,
      treefmt-nix,
      nix-vite-plus,
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        treefmt-nix.flakeModule
      ];
      systems = [
        "x86_64-linux"
      ];
      perSystem = { pkgs, system, ... }: {
        treefmt = {
          projectRootFile = "flake.nix";
          programs = {
            nixfmt.enable = true;
          };
        };
        devShells = {
          default = pkgs.mkShell {
            packages = [
              nix-vite-plus.packages.${system}.vp
            ];
          };
        };
      };
    };
}
