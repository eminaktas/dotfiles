dotfiles
========

My personal dotfiles.

Please only open pull requests that fix bugs or adds improvements without any
breaking changes.

These dotfiles are very personal, and I know that everyone has a different
taste; hence fork this repository or copy/paste them into your own `dotfiles`
repo.

# On a new machine

```
# install all brew dependencies
brew bundle

# copy dotfiles to the appropriate places
make

# make fish the new default
chsh -s /usr/local/bin/fish

# generate and add new SSH key
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

# open Nvim. Lazy.nvim will automatically install all plugins
:Nvim


# install tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# disable font smoothing
defaults -currentHost write -g AppleFontSmoothing -int 0

# enable dark mode notify service
# install binary from: https://github.com/bouk/dark-mode-notify
# install neovim-remote
launchctl load -w ~/Library/LaunchAgents/io.arslan.dark-mode-notify.plist
```

# Configuring Kinesis Advantage2 Keyboard

See `qmk/readme.md`

# Error fixes

## .. fzf extension doesn't exist or isn't installed .. ../build/libfzf.so is not found

```bash
cd /Users/eaktas/.local/share/nvim/lazy/telescope-fzf-native.nvim
make
```

Ref: https://github.com/AstroNvim/AstroNvim/issues/58#issuecomment-1483882011

## VSCode Integrated terminal not working

```bash
Check in Terminal.app:

$ echo $SHELL
/bin/zsh
If the Terminal.app is not set to fish:

Ensure that /usr/local/bin/fish is in the /etc/shell file
if not:
 echo “/usr/local/bin/fish” | sudo tee -a /etc/shells

Make fish shell to default shell for Terminal
chsh -s /usr/local/bin/fish

Reboot

Back and check the Terminal.app is set correctly
```

Ref: https://github.com/microsoft/vscode/issues/106409#issuecomment-690991460
