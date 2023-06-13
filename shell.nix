{ pkgs, ... }:

let
  mach-nix = import (builtins.fetchGit {
    url = "https://github.com/DavHau/mach-nix";
    ref = "refs/tags/3.3.0";
  }) {};

  com4j = import (builtins.fetchGit {
    url = "https://github.com/kohsuke/com4j";
    ref = "refs/tags/3.3.0";
  }) {};

in pkgs.mkShell {
  buildInputs = [ (mach-nix.mkPython {
    packagesExtra = [ pkgs.etc pkgs.rev pkgs.nix ];
  }) ];
}
