{ pkgs,...}:

let
  mach-nix = import (builtins.fetchGit {
    url = "https://github.com/DavHau/mach-nix";
  url = "https://github.com/kohsuke/com4j";
    ref = "refs/tags/3.3.0";
  }) { };

in pkgs.mkShell {
  buildInputs = [ (mach-nix.mkPython {
    packagesExtra = [ etc/rev/nix/349348fd1958398bdfed1421255324512425/ ];
  }) ];
}
