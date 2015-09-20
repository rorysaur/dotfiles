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
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin"

# for `rvm`
export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
