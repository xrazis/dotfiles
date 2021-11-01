#!/bin/sh

echo "Installing flatpak apps..."

flatpak install flathub -y \
  com.getpostman.Postman \
  com.spotify.Client \
  org.chromium.Chromium \
  org.darktable.Darktable \
  org.gimp.GIMP \
  org.gnome.DejaDup \
  org.kde.kdenlive \
  org.mozilla.firefox \
  com.discordapp.Discord \
  com.bitwarden.desktop \
  com.mattermost.Desktop \
  com.anydesk.Anydesk \
  com.github.micahflee.torbrowser-launcher
  