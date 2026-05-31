{pkgs, ...}: {
  services.llama-cpp = {
    enable = false;
    port = 11000;
    modelsPreset = {
      "gemma-4-E4B-it" = {
        hf-repo = "unsloth/gemma-4-E4B-it-GGUF";
        hf-file = "gemma-4-E4B-it-Q4_K_M.gguf";
      };
    };
    package = pkgs.llama-cpp-vulkan;
  };
}
