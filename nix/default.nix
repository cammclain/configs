{ pkgs = import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = [
      pkgs.neovim
      pkgs.git
      pkgs.curl
      pkgs.htop
      pkgs.zsh
    ];
  }
