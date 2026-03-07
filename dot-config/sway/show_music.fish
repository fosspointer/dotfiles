#!/bin/fish

function show_music
    set song_list (mpc ls)
    for i in (seq (count $song_list))
        set song_list[$i] (string join '.' (string split '.' $song_list[$i])[1..-2])
        set song_list[$i] (echo $i - $song_list[$i])
    end
    set song_list (shuf -e $song_list)
    set choice (string join -n -- \n $song_list | wofi --dmenu)
    set choice_index (string split ' - ' $choice)
    
    if not string length -q -- $choice_index[1]
        return
    end
    mpc play $choice_index[1]
end

show_music $argv
