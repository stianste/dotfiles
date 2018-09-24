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

* [How to use grapics card for CUDA but Intel otherwise](https://gist.github.com/alexlee-gk/76a409f62a53883971a18a11af93241b)

* [Changing the grub file](https://askubuntu.com/questions/866437/function-keys-do-not-work-brightness-sound-ubuntu-16-04)

To switch between the integrated graphics and the Nvidia card run either
`sudo prime-select nvidia` or `sudo prime-select intel`. To check what
card is being used run `prime-select query`.

### Power consumption
To monitor the power consumption run `sudo powertop`.
If docker is using a lot of power it can be shut down using `sudo service docker stop`
followed by running `sudo ip link set docker0 down`

### Nice-to-have commands
Scale display with Ubuntu 18 on unity
`xrandr --output eDP-1 --scale 1.25x1.25 --panning 3750x2500`

Where the panning is the screen size times the scaling
- used to remove the invisible mouse boarder - and eDP-1 is the display.
To find the current display run `xrandr --verbose`
