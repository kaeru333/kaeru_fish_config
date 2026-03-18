set -g theme_nerd_fonts yes
set -g theme_color_scheme dark
set -g theme_powerline_fonts yes
set -g theme_newline_cursor yes
set -g theme_newline_prompt "\$ "

# パス表示: 短縮形式 (~/p/m/src)
set -g theme_short_path yes

# Git: ブランチ名のみ表示 (25文字以上は短縮)
set -g theme_display_git yes
set -g theme_display_git_dirty no
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose no
set -g theme_display_git_stashed_verbose no
set -g theme_use_abbreviated_branch_name yes

# コマンド実行時間を表示
set -g theme_display_cmd_duration yes

# 非表示にする項目
set -g theme_display_user no
set -g theme_display_sudo_user no
set -g theme_display_hostname no
set -g theme_display_virtualenv no
set -g theme_display_node no
set -g theme_display_date no
set -g theme_title_display_user no
set -g default_user yoshimi
