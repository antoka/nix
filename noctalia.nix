{ pkgs, inputs, ... }:
{
  environment.systemPackages = with pkgs; [
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  home-manager.users.adama = {
    imports = [
      inputs.noctalia.homeModules.default
    ];
    
    programs.noctalia-shell.enable = true;
  };

}
