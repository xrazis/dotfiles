#!/bin/bash

echo "Installing flatpak apps..."
flatpak install flathub -y \
  com.getpostman.Postman \
  com.spotify.Client \
  org.chromium.Chromium \
  org.darktable.Darktable \
  org.gimp.GIMP \
  org.gnome.DejaDup \
  org.kde.kdenlive \
  com.anydesk.Anydesk \
  com.github.micahflee.torbrowser-launcher \
  md.obsidian.Obsidian \
  org.videolan.VLC \
  org.remmina.Remmina
  
