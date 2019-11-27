# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="evan"

# Options
DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export FFF_LS_COLORS=1
export FFF_COL2=4
export FFF_COL3=4
export EDITOR=vim
export FFF_KEY_SHELL="!"
export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel' 

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# Sources
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh

#Aliases
alias vtop='vtop --theme dark'
alias grep='grep --color=auto'
alias pa='yay -Syu'
alias tor='chromium --proxy-server="socks://localhost:9050"'
alias myip='curl ifconfig.me'
alias mixer='pulsemixer'
alias mail='neomutt'
alias mkdir='mkdir -pv'
# curl -s cheat.sh/cp

# Transfer file 
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
 tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }
