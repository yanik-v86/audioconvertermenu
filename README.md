# audioconvertermenu
A dolphin menu to convert audio files to mp3

# Usage on Dolphin (KDE)
Use right-clic on a multimedia file, and enter in the "Converter" submenu:

# Installation
Find your kio directory. A commonly used directory is $HOME/.local/share/kio/servicemenus/
Add audioConverterMenu.desktop file in your kio/servicemenus directory. It will add a new "Audio" entry in the right-clic menu.

# After
```shell
chmod u+x ~/.local/share/kio/servicemenus/{audioConverterMenu.desktop,convert.sh}
```

# Dependancies
-[] [ffmpeg](https://ffmpeg.org/) to convert files
-[] [lame](http://lame.sourceforge.net/) for mp3 support
