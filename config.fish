# My custom aliases
source ~/.aliases

set -gxp PATH /opt/homebrew/bin /opt/homebrew/sbin /Users/emin.aktas/Library/Python/3.9/bin $HOME/go/bin
set -gx GOBIN $HOME/go/bin
set -gx EDITOR nvim
set -gx FZF_CTRL_T_COMMAND nvim

# git prompt settings
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_char_stateseparator ' '
set -g __fish_git_prompt_char_dirtystate "✖"
set -g __fish_git_prompt_char_cleanstate "✔"
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_conflictedstate "+"
set -g __fish_git_prompt_color_dirtystate yellow
set -g __fish_git_prompt_color_cleanstate green --bold
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_branch cyan --dim --italics

# don't show any greetings
set fish_greeting ""

# don't describe the command for darwin
# https://github.com/fish-shell/fish-shell/issues/6270
function __fish_describe_command; end

# brew install jump, https://github.com/gsamokovarov/jump
status --is-interactive; and source (jump shell fish | psub)

# Senstive functions which are not pushed to Github
# It contains work related stuff, some functions, aliases etc...
source ~/.private.fish

# set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths
# set -g fish_user_paths "/usr/local/opt/mysql-client/bin" $fish_user_paths

# https://gist.github.com/paolocarrasco/18ca8fe6e63490ae1be23e84a7039374?permalink_comment_id=4122809#gistcomment-4122809
# Cannot sign the commits without this parameter.
set -gx GPG_TTY $(tty)
set -gx PATH $PATH $HOME/.krew/bin

# Merge all kubeconfig files
# set -gx KUBECONFIG $(find $HOME/.kube/kcfgctl/ -type f | tr '\n' ':')
