
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/leo/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

export PATH=$PATH:/home/leo/Tools//openfst-1.5.0/bin/:/home/leo/Tools//opengrm-1.2.1/bin
