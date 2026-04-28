{
  # virtualisation.containers.enable = false;
  virtualisation = {
    docker = {
      enable = true;
      storageDriver = "zfs";
    };
  };
}
