{
  description = "My Development Environment";
  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };
    nvchadOverlay = {
      url = "github:username/nvchad-overlay";
    };
  };
  outputs = {
    self, nixpkgs, nvchadOverlay, ...
  }@inputs:
    let
      pkgs = nixpkgs;
    in
    pkgs.mkShell {
      buildInputs = with pkgs; [
        neovim
        git
        curl
        htop
        zsh
        tmux
        fzf
        ripgrep
        nvchadOverlay.nvchad
      ];
      # No additional NeoVim configuration needed (assuming nvchad is configured in the overlay)
    };
}
