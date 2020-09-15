#!/bin/sh

DIR="/mnt/sda2/Bilder/walls"

# pywal: setting wallpaper, generating scheme, applying to terminal
wal -i $(find $DIR -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -type f | shuf -n 1)

# mouse [you won't need this]
#cd ~/IdeaProjects/wallpaper/out/artifacts/wallpaper_jar/
#/usr/lib/jvm/java-14-openjdk/bin/java -jar kone-aimo-xresources.jar --dev /dev/hidraw0

# telegram
cd ~/.telegram-palette-gen/
./telegram-palette-gen --wal

# other programs that read the xresources file (vscode)
xrdb -query > ~/.Xresources

#spicetify apply -> not needed as spotify is for noobs
#pywal-discord -> not needed as betterdiscord keeps getting shrekd
