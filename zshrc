# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

#setting the terminal to vi-mode
# set editing-mode vi
# set blink-matching-paren on
bindkey -v

# powerline fonts
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

export DEV="$HOME/Documents/Development"

DEV=~/Documents/Development

export UE4_ROOT=~/UnrealEngine_4.21
alias eclipse="/home/leo/Documents/Development/epita/epita-dev/java/eclipse-jee-2018-09-linux-gtk-x86_64/eclipse/eclipse"
alias dev="cd $DEV"
alias epita_dev="cd $DEV/epita-dev/"
alias self_taught="cd $DEV/self-taught"
alias activatepy3="source ~/python-env/myvenv/bin/activate"
alias carlapy3="source ~/python-env/carla-py/bin/activate"
alias my_virtual_unix="cd $DEV/Shell/; vagrant up; vagrant ssh"
alias nightmode="redshift -l 48.8:2.3667"
export KAGGLE_PASSWORD="4anotherP@ss"
export KAGGLE_USERNAME="bluenakama"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

export PATH=/home/leo/.nvm/versions/node/v11.0.0/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/.local/bin:/snap/bin:/snap/bin
export PATH="/home/leo/.pyenv/bin:$PATH"
alias adjust_time="sudo htpdate -a google.com"
alias mathlab=/usr/local/MATLAB/R2018b/bin/matlab
alias firefox="env MOZ_USE_XINPUT2=1 firefox"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/leo/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/leo/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/leo/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/leo/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# export PATH=$PATH:/home/leo/Tools/openfst-1.5.0/include/fst/:/home/leo/Tools/opengrm-1.2.1/bin
export PATH=$PATH:/home/leo/Tools/openfst-1.7.0/bin/:/home/leo/Tools/opengrm-1.3.5/bin
export PATH=$PATH:/home/leo/Tools//openfst-1.7.2/bin/:/home/leo/Tools//opengrm-1.3.5/bin
alias data-viz="cd /home/leo/Documents/Development/epita-dev/data-science/data-visualization"
alias dscience="cd /home/leo/Documents/Development/epita-dev/data-science"
