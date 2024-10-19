set -x $EDITOR nvim
set -x INFORMIXDIR ~/Downloads
set -x PATH /home/linuxbrew/.linuxbrew/bin $PATH
set -x PATH /home/yoshimi/anaconda3/bin $PATH
source /home/yoshimi/.config/fish/abbr/abbr.fish
source /home/yoshimi/.config/fish/myconf.d/bobthefish.fish

# keymap
xkbcomp -I$HOME/.xkb ~/.xkb/keymap/mykbd $DISPLAY 2> /dev/null
# scrol
# xinput set-prop 10 "libinput Scrolling Pixel Distance" 70

# Created by `pipx` on 2024-08-18 10:07:10
set PATH $PATH /home/yoshimi/.local/bin

# >>> conda initialize >>>
source (conda info --root)/etc/fish/conf.d/conda.fish

# nvm use v20.18.0

if status is-interactive
    # 既存のセッションがなければ、新規作成
    if tmux ls &> /dev/null
        # 既存のセッションにアタッチ
        tmux attach-session
    else
        # 新規セッションを作成し、tmux-resurrectでセッションを自動復元
        tmux new-session \; run-shell /home/yoshimi/.config/tmux/plugins/tmux-resurrect/scripts/restore.sh

    end
end
