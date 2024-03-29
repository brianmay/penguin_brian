{
  description = "Brian's website";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.flockenzeit.url = "github:balsoft/flockenzeit";

  outputs = { self, nixpkgs, flake-utils, flockenzeit }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        # Generate a user-friendly version number.
        version = builtins.substring 0 8 self.lastModifiedDate;

        gems = pkgs.bundlerEnv {
          name = "gems";
          ruby = pkgs.ruby;
          # Copied from https://blog.yuribocharov.dev/posts/2023/08/09/developing-a-jekyll-site-on-nixos
          # alternative solution: https://github.com/TheNeikos/nixpkgs/blob/ec10e1302442be86f18398cc0f2a45ba3ba605d4/pkgs/servers/web-apps/discourse/default.nix#L192-L205
          gemConfig = {
            sass-embedded = attrs: {
              DART_SASS = pkgs.fetchurl {
                url =
                  "https://github.com/sass/dart-sass/releases/download/1.64.2/dart-sass-1.64.2-linux-x64.tar.gz";
                sha256 = "sha256-+RmtceWz5K2xaJZvuaJs31tocby4H/LwBBV15DRBCzs=";
              };
            };
          };
          gemdir = ./.;
        };

        BUILD_DATE =
          with flockenzeit.lib.splitSecondsSinceEpoch { } self.lastModified;
          "${F}T${T}${Z}";
        VCS_REF = "${self.rev or "dirty"}";

      in {
        packages.default = pkgs.stdenv.mkDerivation {
          name = "penguin_brian-${version}";
          src = ./.;
          buildInputs = [ gems ];
          buildPhase = ''
            export VCS_REF="${VCS_REF}"
            export BUILD_DATE="${BUILD_DATE}"
            ${gems}/bin/jekyll build --destination _site
          '';
          installPhase = ''
            mkdir -p $out
            cp -r _site/* $out
          '';
        };
        devShells.default =
          pkgs.mkShell { buildInputs = [ gems pkgs.ruby pkgs.bundix ]; };
      });
}
