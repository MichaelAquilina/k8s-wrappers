Kubernetes Wrappers
-------------------

ZSH wrappers for hibernates commands. Intended to automatically extend functionality.

## Background Switcher

Automatically change the background color of your terminal based when executing `kubectl exec` commands.

Install by sourcing in your zshrc file

`source "/path/to/background-switcher.zsh"`

Requires that your terminal supports switching background colours via escape codes (Operating system Control sequence 11).

It is _known_ to work on:
- kitty
- gnome-terminal

It should work on (but has not been tested):
- alacritty
- iTerm2
- Konsole
- Terminator
