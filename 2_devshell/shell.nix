 { pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [
      # core
      bat
      coreutils
      curl
      fd
      fzf
      git
      jq
      ripgrep
      tree
      wget

      # general
      nmap

      # disvovery
      dnsx
      httpx
      ipinfo
      naabu
      subfinder

      # vulns
      nuclei

      # screenshot flyovers
      gowitness

      # active directory
      bloodhound-py

    ];
}

