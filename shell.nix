with import (fetchTarball {
  url = https://github.com/nixos/nixpkgs-channels/archive/nixpkgs-unstable.tar.gz;
}) {};
mkShell {
  buildInputs = [ yarn yarn2nix ];
}
