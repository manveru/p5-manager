with import (fetchTarball {
  url = https://github.com/nixos/nixpkgs-channels/archive/nixpkgs-unstable.tar.gz;
}) {};
rec {
  p5-manager = yarn2nix.mkYarnPackage {
    name = "p5-manager";
    src = ./.;
    packageJson = ./package.json;
    yarnLock = ./yarn.lock;
    yarnNix = ./yarn.nix;
  };
}
