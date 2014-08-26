if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
