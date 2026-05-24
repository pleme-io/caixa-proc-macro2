# nix/modules/home-manager.nix — auto-generated from proc-macro2.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.proc-macro2; in {
  options.programs.proc-macro2 = {
    enable = lib.mkEnableOption "proc-macro2";
    package = lib.mkOption { type = lib.types.package; default = pkgs.proc-macro2 or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
