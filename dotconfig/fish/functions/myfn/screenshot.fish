function screenshot -d '-s to select region'
    argparse 's/selection' -- $argv || return

    set -l dir "$HOME/Pictures"
    mkdir $dir 2>/dev/null
    set -l file "$dir/screenshot-"(date +'%Y%m%d-%H%M%S')".png"

    if set -lq _flag_s
        grim -g "$(slurp)" $file
    else
        grim $file
    end

    dunstify -u low $file
end
