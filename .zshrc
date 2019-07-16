export EDITOR="/usr/bin/nvim"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.rbenv/bin:/home/nikolai/.local/bin:$PATH"

export TERM="xterm-256color"

source $HOME/antigen.zsh
source $HOME/.profile
source $HOME/.poetry/env

eval "$(pyenv init -)"
eval "$(rbenv init -)"

antigen use oh-my-zsh

antigen bundle extract
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found
antigen bundle shrink-path

antigen theme agnoster

antigen apply

# Shrink file paths
function prompt_dir() {
  prompt_segment blue black "$(shrink_path -f)"
}

alias vim='nvim'

# random aliases
alias ezsh='$EDITOR ~/.zshrc'
alias szsh='source ~/.zshrc'
alias sodomize='cowsay -f sodomized'
alias pw='password-generator -l 24 -c'

# git aliases
alias gaa='git add --all'
alias gcm='git commit -m'
alias gpo='git push origin'

alias night='redshift &> /dev/null &'
alias day='killall redshift'

alias reload-feh='feh --bg-scale ~/Images/Wallpapers/current'
alias reload-polybar='killall polybar; ~/.bin/polybar.sh &>/dev/null'

alias mdesk='~/.bin/desk.sh && reload-polybar && reload-feh'
alias mlaptop='xrandr --output eDP-1 --auto --output DP-2 --off --output HDMI-1 --off && reload-polybar && reload-feh'

# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=/home/nikolai/.cfg/ --work-tree=/home/nikolai'
