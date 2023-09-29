# how to set up rorysaur's dev environment

<img src="https://raw.githubusercontent.com/rorysaur/dotfiles/master/images/tmux.png" width="500" alt="tmux with neovim">

## first

First, set up the [non-dev stuff](https://rorysaur.blog/posts/2019-10-05-how-to-set-up-rorys-exact-desktop-environment-and-why-it-matters/), including downloading
iTerm and setting up Karabiner-Elements to remap `caps-lock` to `ctrl/esc` as
mentioned there.

## shell

macOS now uses zsh by default. To change back to bash:

`chsh -s /bin/bash`

## iTerm

- Make a new Profile for pretty colors & fonts, or use Default Profile.
- I use Brogrammer (modified) (included in this repo) with [Inconsolata-dz for Powerline](https://github.com/powerline/fonts/tree/master/InconsolataDz), 13pt.

## homebrew: macOS package manager

Install [homebrew](https://brew.sh/) and the brew formulas (formulae?):

- [neovim](https://neovim.io/): vim but with better plugins and an active community
- [tmux](https://github.com/tmux/tmux): terminal multiplexer
- [ripgrep](https://github.com/BurntSushi/ripgrep): like grep
- [python3](https://www.python.org/) (for [deoplete](https://github.com/Shougo/deoplete.nvim))
- [rbenv](https://github.com/rbenv/rbenv): manage ruby versions
- [yarn](https://yarnpkg.com/lang/en/): manage node packages

## git

Try to use `git`. Get a prompt asking to install whatever dev command line tool stuff.
Agree.

## how to use these dotfiles

When `git` works, clone these dotfiles.

Then set up symlinks from files in your home directory to each file/directory
in this repo that you wanna use. (Note that I've named these files without the
`.` in front, because they're easier for me to edit when not hidden.)

Example: `ln -sf /absolute/path/to/dotfiles/bashrc /absolute/path/to/home/.bashrc`

`-s` is for "soft" or "symbolic" link (as opposed to "hard" link); `-f` is for "force" and overwrites previous symlinks.

Absolute paths worked for me, while relative paths didn't.

REMEMBER! For Neovim, put the vim stuff not in the home directory:

```
ln -sf /absolute/path/to/dotfiles/vim /absolute/path/to/home/.config/nvim
ln -sf /absolute/path/to/dotfiles/vimrc /absolute/path/to/home/.config/nvim/init.vim
```

Tip: run `source ~/.bash_profile` to reload bash and see if things are working.

## vim stuff

Install [vim-plug](https://github.com/junegunn/vim-plug).
In `vimrc`, edit the plugins directory if you want it to be different.
Open vim and run `:PlugInstall`.

Now to fix [deoplete](https://github.com/Shougo/deoplete.nvim) which may be throwing errors:

```
pip3 install --user pynvim
```

## vscode

Install VSCode.

Turn on Settings Sync and sign in to GitHub.

I use Neovim, so Neovim needs to be installed on the system first, with its configs set up.

In VSCode, set the Neovim executable path to the result of `which nvim`.

Fix the hjkl key repeat by running in the terminal:

- `defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false`

Restart VSCode after both of the above changes.

## bash stuff

- [jimeh/git-aware-prompt](https://github.com/jimeh/git-aware-prompt)
- [git-completion](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash): Copy this file to `~/.git-completion.bash`

Reload bash, check that the prompt is pretty and that git commands have tab
completion.

## GitHub

- Set up ssh keys
  - `ssh-keygen -t ed25519 -C <email address>`
  - `pbcopy < ~/.ssh/id_ed25519.pub`
- Configure global user name and email
  - `git config --global user.name <name>`
  - `git config --global user.email <email>`

## dev stuff

- (if rubying) [rbenv](https://github.com/rbenv/rbenv): Initialize it and install the latest
  ruby.
- [nvm](https://github.com/nvm-sh/nvm): Install from the website, not through brew.
- [node](https://nodejs.org/en/): Install through nvm (`nvm install node`)
- [Postgres.app](https://postgresapp.com/)

## Slate: window manager

I actually don't use Slate right now (or any window manager), but I'll keep the
config file around in case I go back to it later.
