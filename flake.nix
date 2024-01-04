{
  description = "Brian's website";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        # Generate a user-friendly version number.
        version = builtins.substring 0 8 self.lastModifiedDate;

        gems = pkgs.bundlerEnv {
          name = "gems";
          ruby = pkgs.ruby;
          # gemfile = ./Gemfile;
          # lockfile = ./Gemfile.lock;
          # gemset = ./gemset.nix;
          gemdir = ./.;
        };

      in {
        packages.default = pkgs.stdenv.mkDerivation {
          name = "penguin_brian-${version}";
          src = ./.;
          buildInputs = [ gems ];
          buildPhase = ''
            export VCS_REF="${self.rev or "dirty"}"
            export BUILD_DATE="${version}"
            ${gems}/bin/jekyll build --destination _site
          '';
          installPhase = ''
            mkdir -p $out
            cp -r _site $out/_site
          '';
        };
        devShells.default =
          pkgs.mkShell { buildInputs = [ gems pkgs.bundix ]; };
      });
}
