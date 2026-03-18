# bobthefishのブランチ表示をオーバーライド (最大10文字に短縮)
function __bobthefish_git_branch -S -d 'Get the current git branch (or commitish)'
    set -l branch (command git symbolic-ref HEAD 2>/dev/null | string replace -r '^refs/heads/' '')

    if test -n "$branch"
        set -l theme_git_default_branches master main (git config init.defaultBranch)

        # デフォルトブランチは非表示設定の場合、グリフのみ表示
        if test "$theme_display_git_master_branch" != 'yes' -a "$theme_display_git_default_branch" != 'yes'
            if contains $branch $theme_git_default_branches
                echo $branch_glyph
                return
            end
        end

        # 10文字を超えたら短縮
        set -l truncname $branch
        if test (string length $branch) -gt 10
            set truncname (string sub -l 10 $branch)…
        end

        echo $branch_glyph $truncname
        return
    end

    set -l tag (command git describe --tags --exact-match 2>/dev/null)
    if test -n "$tag"
        echo "$tag_glyph $tag"
        return
    end

    set -l branch (command git show-ref --head -s --abbrev | head -n1 2>/dev/null)
    echo "$detached_glyph $branch"
end
