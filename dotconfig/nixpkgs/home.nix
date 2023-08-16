{ config, pkgs, ... }:
# let
#   home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
# in
{
  # imports = [
  #   (import "${home-manager}/nixos")
  # ];
  imports = [ <home-manager/nixos> ];

  nixpkgs.config.allowUnfree = true;

  home-manager.users.fuji = { pkgs, ... }: {
    home.packages = [ 

      pkgs.acpi
      # pkgs.alacritty
      # pkgs.android-studio
      pkgs.brightnessctl
      # pkgs.dunst
      pkgs.feh
      pkgs.ffmpeg_5-full
      # pkgs.firefox
      pkgs.fish
      # pkgs.google-chrome
      pkgs.htop-vim
      pkgs.imagemagick
      pkgs.jq
      # pkgs.nss-cacert
      pkgs.pavucontrol
      pkgs.pstree
      # pkgs.ricty
      pkgs.screenkey
      # pkgs.slop
      pkgs.xfce.thunar
      pkgs.tldr
      pkgs.usbutils
      # pkgs.vscode
      # pkgs.xautolock
      pkgs.xorg.xev

    ];

    # programs.vscode = {
    #   enable = true;
    #   extensions = with pkgs.vscode-extensions; [
    #     vscodevim.vim
    #     yzhang.markdown-all-in-one
    #   ];
    # };

    programs.git = {
      enable = true;
      userName  = "fdc.fuji";
      userEmail = "fdc.fuji@gmail.com";
    };

    programs.vim = {
      enable = true;
      extraConfig = builtins.readFile /home/fuji/dotfiles/.vimrc;
      plugins = with pkgs.vimPlugins; [
        vim-sensible
        fzf-vim
        # Git
        vim-gitgutter
        vim-fugitive
        # Beauty
        vim-colorschemes
        vim-polyglot
        # Finger friendliness
        vim-sneak
        vim-surround
        vim-commentary
        vim-easy-align
      ];
    };

    programs.tmux = {
      enable = true;
      extraConfig = builtins.readFile /home/fuji/dotfiles/.tmux.conf;
    };

    programs.bash = {
      enable = true;
      bashrcExtra = builtins.readFile /home/fuji/dotfiles/.bashrc;
    };
    programs.zsh = {
      enable = true;
      initExtra = builtins.readFile /home/fuji/dotfiles/.zshrc;
    };

    ## Examples:
    # xdg.configFile."kmonad/config.kbd".source = /home/fuji/dotfiles/dotconfig/kmonad/config.kbd;
    # home.file.".gdbinit".text = ''
    #     set auto-load safe-path /nix/store
    # '';


    # services.screen-locker = {
    #   enable = true;
    #   # lockCmd = "${pkgs.i3lock}/bin/i3lock -c 000000";
    #   lockCmd = ''
    #     fish -c lock
    #   '';
    #   xautolock.extraOptions = ["-time 7 -notify 10 -notifier \"dunstify zzz\" -locker \"fish -c lock\" -lockaftersleep -detectsleep -corners 000-"];
    # };

    home.stateVersion = "23.05";

  };
}
