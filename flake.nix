{
  description = "Brian's website";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.flockenzeit.url = "github:balsoft/flockenzeit";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    flockenzeit,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};

      version = builtins.substring 0 8 self.lastModifiedDate;
      build = {
        BUILD_DATE = with flockenzeit.lib.splitSecondsSinceEpoch {} self.lastModified; "${F}T${T}${Z}";
        VCS_REF = "${self.rev or "dirty"}";
      };

      build_toml = (pkgs.formats.toml {}).generate "build.toml" build;
    in {
      packages.default = pkgs.stdenv.mkDerivation {
        name = "penguin_brian-${version}";
        src = ./.;
        buildPhase = ''
          cp ${build_toml} build.toml
          ${pkgs.zola}/bin/zola build
        '';
        installPhase = ''
          mkdir -p $out
          cp -r public/* $out
        '';
      };
      devShells.default = pkgs.mkShell {
        buildInputs = [
          pkgs.zola
        ];
      };
    });
}
