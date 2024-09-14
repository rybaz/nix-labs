 { pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [
      # core
      bat
      curl
      git
      tree
      wget

      # general
      nmap

      # disvovery
      ipinfo
    ];
}

