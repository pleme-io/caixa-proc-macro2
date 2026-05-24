# nix/modules/nixos.nix — auto-generated from proc-macro2.caixa.lisp
# description: "A substitute implementation of the compiler's `proc_macro` API to decouple token-based libraries from the procedural macro use case."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.proc-macro2;
in {
  options.services.proc-macro2 = {
    enable = lib.mkEnableOption "proc-macro2";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.proc-macro2 or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
