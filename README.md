# Dotfiles
Various dotfiles as well as a `install.sh` script for installing
the basic needs when setting up a new system. This includes installing
git, tmux etc. This readme also contains some notes and nice-to-have
discussions for when things go wrong, as well as experiences made
when working on Linux systems.

## General
### Fonts
I usually use the `Hack` font which can be found [here.](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack#quick-installation)

## Notes
### Installing the nvidia driver
... can be a mess, but it can also be alright. Usually the following
should work:

1. `sudo add-apt-repository ppa:graphics-drivers/ppa`
2. `sudo apt update`
3. `sudo ubuntu-drivers autoinstall`

Then reboot the device. After rebooting run:
`sudo apt install nvidia-cuda-toolkit gcc-7`

This solution was found [here](https://askubuntu.com/questions/1028830/how-do-i-install-cuda-on-ubuntu-18-04)

The next problem after doing this was that the computer tends to use a
lot more power than neccesary. After running the Nvidia settings
program and changing the default grapics to the integrated intel card,
the F-buttons stopped working. I have not solved this yet, but here
are some good sources for this that might help:

* [How to use grapics card for CUDA but Intel otherwise](https://gist.github.com/alexlee-gk/76a409f62a53883971a18a11af93241b)

* [Changing the grub file](https://askubuntu.com/questions/866437/function-keys-do-not-work-brightness-sound-ubuntu-16-04)

