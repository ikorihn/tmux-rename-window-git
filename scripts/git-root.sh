#!/usr/bin/env bash

git-root() {
  dir=${1:-$(pwd)}

  if git -C "${dir}" rev-parse --is-inside-work-tree > /dev/null 2>&1; then
      git -C "${dir}" rev-parse --show-toplevel
  else
      echo "${dir}"
  fi
}

basename "$(git-root $1)"
