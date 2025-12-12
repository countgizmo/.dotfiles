function fish_greeting
    # Get terminal width and calculate centering offset
    set terminal_width (tput cols)
    set art_width 31  # Width of your ASCII art (count the characters in longest line)
    set offset (math --scale=0 "($terminal_width - $art_width) / 2")

    # Ensure offset is not negative for very narrow terminals
    if test $offset -lt 0
        set offset 0
    end

    printf "\n"
    printf "\033[%dC──▄────▄▄▄▄▄▄▄────▄───\n" $offset
    printf "\033[%dC─▀▀▄─▄█████████▄─▄▀▀──\n" $offset
    printf "\033[%dC─────██─▀███▀─██──────\n" $offset
    printf "\033[%dC───▄─▀████▀████▀─▄────\n" $offset
    printf "\033[%dC─▀█────██▀█▀██────█▀──\n" $offset
    printf "\n"
end
