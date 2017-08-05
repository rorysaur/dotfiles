# how to set up rorysaur's computer

## terminal emulator: iTerm2
+ make a new Profile for pretty colors & fonts.
+ I use Brogrammer (modified) with Inconsolata-dz for Powerline, 13pt.
+ set to confirm before quitting.

## OS X package manager: homebrew
and the brew formulas (formulae?):
+ ack
+ macvim (install with `--override-system-vim`)
+ tmux
+ reattach-to-user-namespace (for tmux copy/paste)

## bash stuff
+ jimeh/git-aware-prompt
+ bash-completion (install manually with `curl`)

## dev stuff
+ rvm (for manage teh rubies)
+ node (for javascripts) (I haven't tried nvm but I should)
+ Postgres.app

## window manager: Slate
Slate has about a zillion things you can configure, but I use it only for keybindings to take and activate 2 different snapshots, because I cbf to learn and memorize all the other things you can do with it.

## misc
+ switch Ctrl with Caps Lock. duh.
+ Configure Ctrl (formerly Caps Lock) such that only when pressed in
  combination with another key, it's Ctrl. When pressed alone, it's Esc. Makes
  a lot of things ridiculously easier, including vim.

## how to symlinks
Clone this repo and then set up symlinks from files in your home directory to
each file/directory in this repo. (Note that I've named these files without the `.` in
front, because they're easier for me to edit when not hidden.)

Example: `ln -sf /absolute/path/to/dotfiles/vimrc /absolute/path/to/home/.vimrc`

`-s` is for "soft" or "symbolic"  link (as opposed to "hard" link); `-f` is for "force" and overwrites previous symlinks.

Absolute paths worked for me, while relative paths didn't.

## git
+ set up ssh keys.
+ configure global user name and email
