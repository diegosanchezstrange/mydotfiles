# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/diego/.oh-my-zsh"

PATH=$HOME/mydotfiles/tmux-spotify-info:$PATH

ZSH_THEME="robbyrussell"
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

fortune | cowsay -f tux

#Alias
alias jsc="node"
alias py="python3"
alias ctux="clear ; fortune | cowsay -f tux"
alias ts="tmux new -s work"
alias ta="tmux a -t work"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
