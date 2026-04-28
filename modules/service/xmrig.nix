{pkgs, ...}: {
  services.xmrig = {
    enable = false;
    package = pkgs.xmrig-mo;
    settings = {
      autosave = true;
      cpu = {
        enabled = true;
        huge-pages = true;
        # max-threads-hint = 75;
        memory-pool = true;
      };
      randomx = {
        "1gb-pages" = true;
        mode = "fast";
      };
      opencl = false;
      cuda = false;
      pools = [
        {
          url = "gulf.moneroocean.stream:20128";
          user = "85ZvtBpzggGUmmEzLCcnfUixJoURPxVHKBFouzLUDB5BGtXAdd7rPWTcghRYESWrapJtGMP998Bk6JVru5bALC3TNSruHnz.local1";
          pass = "x";
          keepalive = true;
          tls = true;
        }
        # {
        #   url = "pool.supportxmr.com:443";
        #   user = "85ZvtBpzggGUmmEzLCcnfUixJoURPxVHKBFouzLUDB5BGtXAdd7rPWTcghRYESWrapJtGMP998Bk6JVru5bALC3TNSruHnz.local1";
        #   keepalive = true;
        #   tls = true;
        # }
      ];
    };
  };
  boot.kernelParams = ["hugepagesz=1G" "hugepages=4"];
  boot.kernel.sysctl."vm.nr_hugepages" = 512;
}
