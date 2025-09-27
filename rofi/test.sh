#!/usr/bin/env bash

DIR="$HOME/Pictures"
SYMLINK_PATH="$HOME/.config/hypr/current_wallpaper"

dir="$HOME/.config/rofi/launchers/type-1"
theme='style-10'

CMD="$HOME/bin/change_wallpaper.sh"

FILE=$(
  for a in "$DIR"/*.{jpg,jpeg,png,gif}; do
    [ -f "$a" ] || continue
    name=$(basename "$a")
    echo -en "$name\0icon\x1f$a\n"
  done | rofi -dmenu -show-icons -theme "$HOME/.config/rofi/launchers/type-1/style-wallpaper" -p "Wallpaper:"
)

if [ -n "$FILE" ]; then
    swww img "$DIR/$FILE" --transition-type center --transition-duration 2; matugen image "$DIR/$FILE"
    python3 ~/.config/nvim/pywal/chadwal.py
fi

cp "$DIR/$FILE" "$SYMLINK_PATH"
