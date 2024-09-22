 { pkgs ? import <nixpkgs> {} }:

 pkgs.mkShell {

    packages = [ 
    	pkgs.python3
	];

    shellHook = ''
    	printf "===============================================================\n"
    	printf "This is a devshell for Python3 with the following dependencies:\n"
	printf " - beautifulsoup4\n"
	printf " - colorama\n"
	printf " - requests\n"
    	printf "===============================================================\n"
	'';
}

