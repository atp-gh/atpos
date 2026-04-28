{
  lib,
  pkgs,
  ...
}:
lib.mkIf false {
  programs.kodi = {
    enable = true;
    package = pkgs.kodi-gbm.withPackages (exts:
      with exts; [
        # Gamepad driver
        joystick
        jellycon
      ]);
  };
}
