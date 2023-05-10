#!/bin/bash

# Polybar
$RICE_THEME = <(cat ~/.config/.rice)
echo "RICE: $RICE_THEME"
rm $HOME/.config/i3/scripts/polybar

ln -s "$HOME/.config/rice/$RICE_THEME/polybar.sh" $HOME/.config/i3/scripts/polybar

# Reload Terminal Colors
rm ~/.config/alacritty/alacritty.yml
ln -s ~/.config/rice/$RICE_THEME/alacrittyrc ~/.config/alacritty/alacritty.yml

# Reload Cava config
rm ~/.config/cava/config
ln -s ~/.config/rice/$RICE_THEME/cavarc ~/.config/cava/config

# Wallpaper
nitrogen --random "$HOME/.config/rice/$RICE_THEME/wall" --set-zoom-fill

# Kill Picm (i3 will restart it)
pkill picom
# Picom Config
rm ~/.config/picom/picom.conf
ln -s ~/.config/rice/$RICE_THEME/picomrc ~/.config/picom/picom.conf

# Dunst
pkill dunst
rm ~/.config/dunst/dunstrc
ln -s ~/.config/rice/$RICE_THEME/dunstrc ~/.config/dunst/dunstrc

# GTK-3.0

rm ~/.config/gtk-3.0/settings.ini
ln -s ~/.config/rice/$RICE_THEME/gtkrc ~/.config/gtk-3.0/settings.ini

# Rofi

#rm ~/.config/rofi
#ln -s ~/.config/rice/$RICE_THEME/rofi ~/.config
