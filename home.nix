{ config, pkgs, nixpkgs, ... }:

{
  imports = [
    ./modules
  ];

  # If we want to disable the stylix in some program
  # stylix.targets.nixvim.enable = false;
  # wayland.windowManager.hyprland.settings.general."col.active_border" = lib.mkForce "rgb(${config.stylix.base16Scheme.base0E})";

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "b3rrypi";
  home.homeDirectory = "/home/b3rrypi";

  # allow unfree packages
  nixpkgs.config.allowUnfreePredicate = _: true;

  # Enable cliPrograms
  git.enable = true;
  kitty.enable = true;
  starship.enable = true;
  bash.enable = true;
  nixvim.enable = true;
  zathura.enable = true;
  tmux.enable = true;

  # Enable programs
  firefox.enable = true;

  # Enable Gnome Custom configuration
  gnome-config.enable = false;
  
  # Enable Hyprland config
  hyprland.enable = false;
  hyprpaper.enable = false;
  hypridle.enable = false;
  hyprlock.enable = false;

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = with pkgs; [
    # gnomeExtensions.blur-my-shell
    # gnomeExtensions.forge
    # gnomeExtensions.bluetooth-battery
    brave
    obsidian
    discord
    spotify
    protonvpn-gui
    vscode
    slack
    mongodb-compass
    git
    kitty
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
