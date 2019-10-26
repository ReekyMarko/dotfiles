#!/bin/sh

# Generates zathura configuration file with pywal colors

. $HOME/.cache/wal/colors.sh

cat <<CONF > ~/.config/zathura/zathurarc
set completion-bg "$background"
set recolor-darkcolor "$foreground"
set recolor-lightcolor "$background"
set completion-fg "$foreground"
set completion-group-bg "$background"
set completion-group-fg "$color2"
set completion-highlight-bg "$foreground"
set completion-highlight-fg "$background"
set default-bg "$background"
set default-fg "$foreground"
set inputbar-bg "$background"
set inputbar-fg "$foreground"
set notification-bg "$background"
set notification-fg "$foreground"
set notification-error-bg "$color1"
set notification-error-fg "$foreground"
set notification-warning-bg "$color1"
set notification-warning-fg "$foreground"
set statusbar-bg "$background"
set statusbar-fg "$foreground"
set index-bg "$background"
set index-fg "$foreground"
set index-active-bg "$foreground"
set index-active-fg "$background"
set render-loading-bg "$background"
set render-loading-fg "$foreground"

set smooth-scroll true
set window-title-home-tilde true
set statusbar-basename true
set selection-clipboard clipboard
set recolor false
CONF
