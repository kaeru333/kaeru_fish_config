set -x $EDITOR nvim
set -x INFORMIXDIR ~/Downloads
set -x PATH /home/linuxbrew/.linuxbrew/bin $PATH
set -x PATH /home/yoshimi/anaconda3/bin $PATH
set -g PATH $HOME/go/bin $PATH
source /home/yoshimi/.config/fish/abbr/abbr.fish
source /home/yoshimi/.config/fish/myconf.d/bobthefish.fish

# scrol
# xinput set-prop 10 "libinput Scrolling Pixel Distance" 70

# Created by `pipx` on 2024-08-18 10:07:10
set PATH $PATH /home/yoshimi/.local/bin


# nvm use v20.18.0

function fuck -d "Correct your previous console command"
    set -l fucked_up_command $history[1]
    set -l unfucked_command (env TF_SHELL=fish TF_ALIAS=fuck PYTHONIOENCODING=utf-8 thefuck $fucked_up_command THEFUCK_ARGUMENT_PLACEHOLDER $argv)
    if test "$unfucked_command" != ""
        eval $unfucked_command
        builtin history delete --exact --case-sensitive -- $fucked_up_command
        builtin history merge
    end
end

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

#if test (node -v) != "v20.17.0"
#    nvm use v20.17.0
#end

function ya
    set tmp (mktemp -t "yazi-cwd.XXXXX")
    yazi --cwd-file="$tmp"
    if test -f "$tmp"
        set cwd (cat -- "$tmp")
        if test -n "$cwd" -a "$cwd" != "$PWD"
            cd -- "$cwd"
        end
    end
    rm -f -- "$tmp"
end


set -U FISH_CACHE_DIR "/home/yoshimi/.cache/fish"
set -l CONFIG_CACHE "$FISH_CACHE_DIR"/config.fish

if test "$FISH_CONFIG" -nt "$CONFIG_CACHE"
    mkdir -p $FISH_CACHE_DIR
    echo '' >$CONFIG_CACHE

    # conda のキャッシュ追加
    if type -q conda
        set conda_root (conda info --root)
        echo "source $conda_root/etc/fish/conf.d/conda.fish" >>$CONFIG_CACHE
    end

    # nvm のキャッシュ追加
    type -q nvm; and echo "nvm use v20.17.0" >>$CONFIG_CACHE
    
    # starship init fish >>$CONFIG_CACHE
    echo "config cache updated"
end
source $CONFIG_CACHE
