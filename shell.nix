{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.kubernetes-helm
    pkgs.terraform
    pkgs.yq-go
  ];
}
