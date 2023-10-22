#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

tmux set-option -wg automatic-rename on
tmux set-option -wg automatic-rename-format "#($CURRENT_DIR/scripts/git-root.sh \#{pane_current_path})"
