if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x $EDITOR nvim
set -x INFORMIXDIR ~/Downloads
set -x PATH /home/linuxbrew/.linuxbrew/bin $PATH
set -x PATH /home/yoshimi/anaconda3/bin $PATH
source /home/yoshimi/.config/fish/abbr/abbr.fish
source /home/yoshimi/.config/fish/myconf.d/bobthefish.fish

xkbcomp -I$HOME/.xkb ~/.xkb/keymap/mykbd $DISPLAY 2> /dev/null

# Created by `pipx` on 2024-08-18 10:07:10
set PATH $PATH /home/yoshimi/.local/bin
