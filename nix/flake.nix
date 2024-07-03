{
  description = "Lightweight localhost development environment";
  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
  };
  outputs = {
    self, nixpkgs, ...
  }@inputs:
    let
      pkgs = nixpkgs;
    in
    pkgs.mkShell {
      buildInputs = [
        pkgs.neovim
        pkgs.git
        pkgs.curl
        pkgs.htop
        pkgs.zsh
        pkgs.tmux
        pkgs.fzf
        pkgs.ripgrep
      ];
      # Add NeoVim configuration here
      nixpkgs.neovim.config = {
        # Add your NeoVim configuration options here (e.g., plugins)
      };
    };
}
