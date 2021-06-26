# how to set up rorysaur's dev environment

<img src="https://raw.githubusercontent.com/rorysaur/dotfiles/master/images/tmux.png" width="500" alt="tmux with neovim">

## first
First, set up the [non-dev stuff](https://rorysaur.blog/post/188156909219/how-to-set-up-rorys-exact-desktop-environment), including downloading
iTerm and setting up Karabiner-Elements to remap `caps-lock` to `ctrl/esc` as
mentioned there.


## shell
macOS now uses zsh by default. To change back to bash:

`chsh -s /bin/bash`


## iTerm
+ Make a new Profile for pretty colors & fonts.
+ I use Brogrammer (modified) (included in this repo) with [Inconsolata-dz for Powerline](https://github.com/powerline/fonts/tree/master/InconsolataDz), 13pt.
+ Set to confirm before quitting. (This is now a default. yay!)


## homebrew: macOS package manager
Install [homebrew](https://brew.sh/) and the brew formulas (formulae?):
+ [neovim](https://neovim.io/): vim but with better plugins and an active community
+ [tmux](https://github.com/tmux/tmux): terminal multiplexer
+ [ripgrep](https://github.com/BurntSushi/ripgrep): like grep
+ [python3](https://www.python.org/) (for [deoplete](https://github.com/Shougo/deoplete.nvim))
+ [rbenv](https://github.com/rbenv/rbenv): manage ruby versions
+ [yarn](https://yarnpkg.com/lang/en/): manage node packages


## git
Try to use `git`. Get a prompt asking to install whatever dev command line tool stuff.
Agree.


## how to use these dotfiles

When `git` works, clone these dotfiles.

Then set up symlinks from files in your home directory to each file/directory
in this repo that you wanna use. (Note that I've named these files without the
`.` in front, because they're easier for me to edit when not hidden.)

Example: `ln -sf /absolute/path/to/dotfiles/bashrc /absolute/path/to/home/.bashrc`

`-s` is for "soft" or "symbolic"  link (as opposed to "hard" link); `-f` is for "force" and overwrites previous symlinks.

Absolute paths worked for me, while relative paths didn't.

REMEMBER! For Neovim, put the vim stuff not in the home directory:
```
ln -sf /absolute/path/to/dotfiles/vim /absolute/path/to/home/.config/nvim
ln -sf /absolute/path/to/dotfiles/vimrc /absolute/path/to/home/.config/nvim/init.vim
```


## vim stuff

Install [vim-plug](https://github.com/junegunn/vim-plug).
In `vimrc`, edit the plugins directory if you want it to be different.
Open vim and run `:PlugInstall`.

Now to fix [deoplete](https://github.com/Shougo/deoplete.nvim) which may be throwing errors:
```
pip3 install --user pynvim
```


## bash stuff
+ [jimeh/git-aware-prompt](https://github.com/jimeh/git-aware-prompt)
+ [git-completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash): Copy this file to `~/.git-completion.bash`

Reload bash, check that the prompt is pretty and that git commands have tab
completion.


## GitHub
+ Set up ssh keys
+ Configure global user name and email


## dev stuff
+ [rbenv](https://github.com/rbenv/rbenv): Initialize it and install the latest
  ruby.
+ [node](https://nodejs.org/en/)
+ [Postgres.app](https://postgresapp.com/)


## Slate: window manager
I actually don't use Slate right now (or any window manager), but I'll keep the
config file around in case I go back to it later.
