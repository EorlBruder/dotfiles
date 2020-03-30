# dotfiles

## Installation
Install [stow](https://www.gnu.org/software/stow/) and then link all dotfiles out via `stow general` etc. 
The `required.txt` should give a broad overview which software is required to run this with Arch Linux. 
You currently need to manually install the crontab-file, or else vdirsyncer won't work as expected

## Private submodule
the private submodule currently contains the following configs: 
- .gitconfig-private, with my user-information
- .ssh/config
- .config/Nextcloud/nextcloud.cfg 
- .config/Nextcloud/sync-exclude.lst
- .config/vdirsyncer/config
All of them contain either private email-addresses, usernames or server-addresses

## Set keyboard layout
`localectl --no-convert set-x11-keymap de,ru pc105 grp:rctrl_rshift_toggle`
