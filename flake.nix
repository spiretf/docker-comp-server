{
  inputs = {
    utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "nixpkgs/release-24.05";
    spire.url = "github:spiretf/nix";
    spire.inputs.nixpkgs.follows = "nixpkgs";
    spire.inputs.utils.follows = "utils";
  };

  outputs = {
    self,
    nixpkgs,
    utils,
    spire,
  }:
    utils.lib.eachSystem spire.systems (system: let
      overlays = [spire.overlays.default];
      pkgs = (import nixpkgs) {
        inherit system overlays;
      };
      inherit (pkgs) lib;
      spEnv = pkgs.sourcepawn.buildEnv (with pkgs.sourcepawn.includes; [sourcemod]);
    in rec {
      packages = rec {
        inherit spEnv;
      };
      devShells.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [spEnv];
      };
    });
}
