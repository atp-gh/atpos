{pkgs, ...}: {
  services.hardware.openrgb = {
    enable = false;
    motherboard = "amd";
    server.port = 6742;
    package = pkgs.openrgb-with-all-plugins;
  };
  hardware.i2c.enable = true;
}
