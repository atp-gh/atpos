{pkgs, ...}: {
  programs.lutris = {
    enable = true;
    winePackages = [pkgs.wineWow64Packages.full];
    protonPackages = [pkgs.proton-ge-bin];
  };
}
