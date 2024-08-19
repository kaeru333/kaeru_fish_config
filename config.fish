if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -x $EDITOR nvim
set -x INFORMIXDIR ~/Downloads
source /home/yoshimi/.config/fish/abbr/abbr.fish
set -x PATH /home/linuxbrew/.linuxbrew/bin $PATH

xkbcomp -I$HOME/.xkb ~/.xkb/keymap/mykbd $DISPLAY 2> /dev/null

# Created by `pipx` on 2024-08-18 10:07:10
set PATH $PATH /home/yoshimi/.local/bin

set -g theme_nerd_fonts yes
set -g theme_color_scheme dark
set -g default_user bobthecow
set -g theme_powerline_fonts yes
set -g theme_newline_cursor yes
set -g theme_newline_prompt "\$ "
set -g theme_display_virtualenv yes
set -g theme_display_node yes
set -g theme_display_git yes

