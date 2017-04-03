#!/usr/bin/env zsh

ln -sf $(pwd) /home/ducalpha/.zprezto && echo "Created symlink for ~/.zprezto"


setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N);
do
  # Do not use zshrc of prezto but use our customized one which already includes prezto
  if [[ $rcfile != *zshrc ]];
  then
    ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}" && echo "Created symlink for "$rcfile
  fi
done

