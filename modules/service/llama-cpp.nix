{pkgs, ...}: {
  services.llama-cpp = {
    enable = false;
    package = pkgs.llama-cpp-vulkan;
  };
}
