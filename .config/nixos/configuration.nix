{ config, lib, pkgs, ... }:

{
    imports =
        [ 
        ./hardware-configuration.nix
        ];

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    networking.hostName = "nixos";  
    networking.networkmanager.enable = true;

    time.timeZone = "Europe/Belgrade";

    services.pipewire = {
        enable = true;
        pulse.enable = true;
    };

    users.users.youshitsune = {
        isNormalUser = true;
        extraGroups = [ "wheel" "users" "networkmanager"];
        packages = with pkgs; [
        ];
    };

    environment.systemPackages = with pkgs; [
        vim
        neovim  
        wget
        hyprland
        kitty
        git
        brave
        bemenu
        pcmanfm
        tmux
        gbar
        ly
        wayland
        wayland-protocols
        wayland-scanner
        bluez
        gtk3
        gtk-layer-shell
        libpulseaudio
        libdbusmenu-gtk3
        libsass
        cmus
        wl-clipboard
        pamixer
        hyprpaper
        gvfs
        udisks2
        gnome-disk-utility
        p7zip
        eza
        yash
        gnupg	
        pinentry-tty
        (python311.withPackages(ps: with ps; [ pandas requests]))
        btop

        # Email
        neomutt
        isync
        msmtp
        pass
        cacert
        gettext
        notmuch

        # Notifications
        libnotify
        mako
        ntfy-sh

        gcc
        clang
        gnumake
        go
    ];

    services.displayManager.ly.enable = true;
    services.udisks2.enable = true;
    services.gvfs.enable = true;
    programs.hyprland.enable = true;

    fonts.packages = with pkgs; [
        noto-fonts
        noto-fonts-cjk-sans
        noto-fonts-emoji
        nerd-fonts.caskaydia-cove
    ];

    services.pcscd.enable = true;
    programs.gnupg.agent = {
        enable = true;
        enableSSHSupport = true;
    };

    system.stateVersion = "25.05"; # Did you read the comment?
}

