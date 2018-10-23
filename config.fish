status --is-interactive; and source (rbenv init - | psub)

set PATH $HOME/.evm/bin $PATH
set PATH $HOME/Code/bool/libexec $PATH
set PATH $HOME/.cask/bin $PATH
set PATH $HOME/bin $PATH

set LC_ALL en_US.UTF-8
set LANG en_US.UTF-8

set -x AWS_REGION eu-west-1
set -x AWS_ACCESS_KEY_ID (cat $HOME/.awssecret | head -1)

alias cs 'consul-list | peco | multi-ssh'
alias as 'aws-list | peco | multi-ssh'
alias ts 'aws-list | peco | multi-ssh -t "tmux -CC new -A -s johan"'
alias chef 'consul-list | peco | multi-ssh sudo service chef-client run'
alias http 'python -m SimpleHTTPServer'

function cd
  builtin cd $argv; and ls -lF
end
