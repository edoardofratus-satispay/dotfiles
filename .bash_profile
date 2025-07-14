export LSCOLORS="EHfxcxdxBxegecabagacad" 
alias ls='ls -lGH'
export PS1='\[\e[1;31m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\]\$ '
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"



