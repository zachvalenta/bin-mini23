#!/usr/bin/env bash

echo -en "\n"
sprint_bg="hsl(45, 100%, 35%)"
sprint_fg="$(pastel textcolor "$sprint_bg")"

# LINT
pastel paint "$sprint_fg" --on "$sprint_bg" "LINT"
CONF_DIR="$HOME/Documents/denv/dotfiles/git"
\cd $CONF_DIR
pyinilint "base.ini"
pyinilint "delta.ini"
pyinilint "diff-so-fancy.ini"
pyinilint "diffnav.ini"
pyinilint "extra-delta-themes.ini"
echo -en "\n"

# LIST
pastel paint "$sprint_fg" --on "$sprint_bg" "SHOW ORIGIN"
git config --show-origin --list
echo -en "\n"
