#!/usr/bin/env bash
#
# Usage: ./update.sh [pattern]
#
# Specify [pattern] to update only repos that match the pattern.

repos=(

  airblade/vim-gitgutter
  altercation/vim-colors-solarized
  davidhalter/jedi-vim
  easymotion/vim-easymotion
  itchyny/lightline.vim
  junegunn/fzf
  junegunn/fzf.vim
  junegunn/goyo.vim
  junegunn/seoul256.vim
  ludovicchabant/vim-gutentags
  majutsushi/tagbar
  mileszs/ack.vim
  scrooloose/nerdtree
  sheerun/vim-polyglot
  tpope/vim-commentary
  tpope/vim-pathogen
  tpope/vim-unimpaired
  vim-scripts/TaskList.vim
  w0rp/ale

)

set -e
dir=~/.vim/bundle

if [ -d $dir -a -z "$1" ]; then
  temp="$(mktemp -d -t bundleXXXXX)"
  echo "▲ Moving old bundle dir to $temp"
  mv "$dir" "$temp"
fi

mkdir -p $dir

for repo in ${repos[@]}; do
  if [ -n "$1" ]; then
    if ! (echo "$repo" | grep -i "$1" &>/dev/null) ; then
      continue
    fi
  fi
  plugin="$(basename $repo | sed -e 's/\.git$//')"
  [ "$plugin" = "vim-styled-jsx" ] && plugin="000-vim-styled-jsx" # https://goo.gl/tJVPja
  dest="$dir/$plugin"
  rm -rf $dest
  (
    git clone --depth=1 -q https://github.com/$repo $dest
    # rm -rf $dest/.git
    echo "· Cloned $repo to $dest"
  ) &
done
wait
