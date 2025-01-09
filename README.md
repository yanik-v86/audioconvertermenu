# AudioConverterMenuDolphin
A dolphin menu to convert audio files to mp3

 ![menu](https://github.com/user-attachments/assets/0c8d64c1-5f09-4824-a75c-c399e0c32563)


# Usage on Dolphin (PLASMA)
Use right-clic on a multimedia file, and use **"Convert multimedia file to mp3"**.

# Installation
Find your **kio/servicemenus** directory. A commonly used directory is **~/.local/share/kio/servicemenus/**

Add **audioConverterMenu.desktop** and **convert.sh** files in your **~/.local/share/kio/servicemenus/** directory. It will add a new "Convert multimedia file to mp3" entry in the right-clic menu.

# After
```shell
chmod u+x ~/.local/share/kio/servicemenus/{audioConverterMenu.desktop,convert.sh}
```

# Dependancies
```shell
sudo apt install kdialog # для Debian/Ubuntu
sudo pacman -S kdialog # для Arch/Manjaro
sudo dnf install kdialog # для Fedora
```

- [ffmpeg](https://ffmpeg.org/) to convert files
- [lame](http://lame.sourceforge.net/) for mp3 support
