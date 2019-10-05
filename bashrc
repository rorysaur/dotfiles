# load git-aware-prompt for git info in bash prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

# prompt with pretty colors and git branch
export PS1="\t \[$txtgrn\]\u@\h \[$txtylw\]\w \[$txtblu\]\$git_branch\$git_dirty\[$txtrst\]> "

# do bash completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# for `psql`
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"

# for tmuxinator
export EDITOR=vim
alias mux=tmuxinator

# for nvim
alias vim=nvim

# allows brew-installed programs to be executed over system installs
export PATH="/usr/local/bin:$PATH"

# initialize rbenv
eval "$(rbenv init -)"

# initialize nvm
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
