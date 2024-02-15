abbr -a vim nvim
abbr -a vi nvim

source ~/.config/fish/kanagawa.fish

if status is-login
    if test (tty) = /dev/tty1
        exec Hyprland &>~/.logs/hyprland
    end
end
