# NixOS Media Server Configuration

This is my NixOS configuration for a home media server using Nixarr.

## Features
- Jellyfin media server
- Full *arr stack (Radarr, Sonarr, Prowlarr)
- qBittorrent/Transmission
- Samba file sharing

## Usage
1. Install NixOS
2. Clone this repo to `/etc/nixos`
3. Copy your `hardware-configuration.nix` 
4. Run `sudo nixos-rebuild switch --flake /etc/nixos#nixos`

## Services
- Jellyfin: http://server:8096
- Radarr: http://server:7878
- Sonarr: http://server:8989
- Prowlarr: http://server:9696
