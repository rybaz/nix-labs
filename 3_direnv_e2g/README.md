# direnv demo
Assuming you have Nix installed:
1. Create a file inside this folder called `.envrc` and paste this inside:
```
use flake
layout python3
```

2. Create a file inside this folder called `flake.nix` and paste this inside:
```nix
{
  description = "my e2g flake file";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            # python
            python3
          ];
        };
      });
}
```

3. Run: `direnv allow .`
3. Run: `pip install -r requirements.txt`
