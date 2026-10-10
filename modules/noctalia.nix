{ pkgs, inputs, ... }:
{
  home-manager.users.antoka = {
    imports = [
      inputs.noctalia.homeModules.default
    ];

    programs.noctalia = {
      enable = true;
      settings = {
      };
    };
  };
}
