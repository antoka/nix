
{ config, pkgs, ... }:

{
  environment.systemPackages = [ pkgs.cifs-utils ];

#   fileSystems."/mnt/private" = {
#    device = "//192.168.88.3/private";
#    fsType = "cifs";
#    options = let
#      automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";
#    in ["${automount_opts},credentials=/etc/nixos/smb-secrets,uid=1000,gid=100"];
#  };

 fileSystems."/mnt/private" = {
    device = "//192.168.88.3/private";
    fsType = "cifs";
    options = [
      "x-systemd.automount"
      "noauto"
      "x-systemd.idle-timeout=60"
      "x-systemd.device-timeout=5s"
      "x-systemd.mount-timeout=5s"
      "credentials=/etc/nixos/smb-secrets"
      "uid=1000"
      "gid=100"
    ];
  };

  fileSystems."/mnt/media" = {
    device = "//192.168.88.3/media";
    fsType = "cifs";
    options = [
      "x-systemd.automount"
      "noauto"
      "x-systemd.idle-timeout=60"
      "x-systemd.device-timeout=5s"
      "x-systemd.mount-timeout=5s"
      "credentials=/etc/nixos/smb-secrets"
      "uid=1000"
      "gid=100"
    ];
  };

  fileSystems."/mnt/fenykeptar" = {
    device = "//192.168.88.3/fenykeptar";
    fsType = "cifs";
    options = [
      "x-systemd.automount"
      "noauto"
      "x-systemd.idle-timeout=60"
      "x-systemd.device-timeout=5s"
      "x-systemd.mount-timeout=5s"
      "credentials=/etc/nixos/smb-secrets"
      "uid=1000"
      "gid=100"
    ];
  };
}

