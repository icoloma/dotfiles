alias ip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

alias dig="dig +nocmd any +multiline +noall +answer"

alias g="git"
