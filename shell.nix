{ pkgs ? import <nixpkgs> { } }:

let
  mach-nix = import (builtins.fetchGit {
    url = “https://github.com/DavHau/mach-nix”;
#url = “https://github.com downloads/kohsuke/com4j/com4j-20120426-2.zip”
    ref = “refs/tags/3.3.0”;
  }) { };

in pkgs.mkShell {
  buildInputs = [ (mach-nix.mkPython {
W
    packagesExtra = [ ./. ];
  }) ];
}
