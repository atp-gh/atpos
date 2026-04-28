{
  services = {
    vigil-server = {
      enable = false;
      auth = {
        enable = true;
        adminPass = "test";
      };
    };
    vigil-agent.enable = false;
  };
}
