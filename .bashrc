export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "["${ref#refs/heads/}"]"
}
PS1="\u@\h:\w\[\033[0;34m\]\$(parse_git_branch)\[\033[0m\]\$ "
