if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    fastfetch
end

function fish_user_key_bindings
    bind \e\[3\;5~ kill-word
    bind \cH backward-kill-word
end

function fish_prompt
    if [ $status = 0 ]
        set status_color "green"
    else
        set status_color "red"
    end
    
    string join '' -- (set_color cyan) $USER (set_color magenta) '@' $hostname ' ' (set_color yellow) (date +"[%d/%m/%y-%H:%M:%S]") (set_color $status_color) \n (prompt_pwd) ' =» ' (set_color normal)
end

function download
    set old_path (pwd)
    cd ~/music
    yt-dlp -f bestaudio -x --embed-metadata --embed-thumbnail --add-metadata $argv[1]
    mpc clear
    mpc add /
    cd $old_path
end


set -Ux MANPAGER "nvim +Man!"
zoxide init fish | source
alias cd "z"
alias vim "nvim"
