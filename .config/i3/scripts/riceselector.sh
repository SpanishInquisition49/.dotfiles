#!/bin/bash

rofi_command="rofi -dmenu -theme $HOME/.config/rofi/riceselector.rasi"

options=("gruvbox-dark" "sakura-night" "midnight-love")

selected=$(printf "%s\n" "${options[@]}" | $rofi_command)

if [[ -n "$selected" ]]; then
	echo "$selected" > ~/.config/.rice
    zsh -c "source ~/.zshrc && ~/.config/rice/theme.sh $selected"
	i3-msg reload
    i3-msg restart
fi
