{pkgs, ...}: {
  programs.lutris = {
    enable = false;
    winePackages = [pkgs.wineWow64Packages.full];
    protonPackages = [pkgs.proton-ge-bin];
  };
}
