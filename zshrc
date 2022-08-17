#
# Executes commands at the start of an interactive session.
#

precmd() {
  echo -ne "\e]1;${PWD##*/}\a"
}

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Created by newuser for 5.4.2

# Need more history
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rahimramzan/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/rahimramzan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rahimramzan/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/rahimramzan/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/anaconda/bin:$PATH"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
setopt clobber

unalias mysql
if [ /Users/rahimramzan/google-cloud-sdk/bin/kubectl ]; then source <(kubectl completion zsh); fi

# Create Aliases
alias ls='ls -lAFh' #Testing alias

# Customize Prompt(s)
# PROMPT='
# %1~ %L %# '

# RPOMPT='%*'
