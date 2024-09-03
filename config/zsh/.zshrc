export ZSH="/Users/zhengzhe17/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git colored-man-pages zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source ~/.zshrc-origin

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
