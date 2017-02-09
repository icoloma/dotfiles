[ -n "$PS1" ] && source ~/.bash_profile

export NVM_DIR="/home/icoloma/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/icoloma/google-cloud-sdk/path.bash.inc' ]; then source '/home/icoloma/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/icoloma/google-cloud-sdk/completion.bash.inc' ]; then source '/home/icoloma/google-cloud-sdk/completion.bash.inc'; fi
