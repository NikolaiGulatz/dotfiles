export EDITOR="/usr/bin/subl"
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

source $HOME/.antigen.zsh

antigen use oh-my-zsh

antigen bundle extract
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle command-not-found

antigen theme agnoster

antigen apply

# random aliases
alias ezsh='$EDITOR ~/.zshrc'
alias szsh='source ~/.zshrc'
alias sodomize='cowsay -f sodomize'
alias pw='password-generator -l 24 -c'

# git aliases
alias gaa='git add --all'
alias gcm='git commit -m'
alias gpo='git push origin'

alias night='redshift &> /dev/null &'
alias day='killall redshift'

# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=/home/nikolai/.cfg/ --work-tree=/home/nikolai'
