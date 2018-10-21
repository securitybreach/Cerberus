# #Check for an interactive session
#alias ls='ls --color=auto'


alias grep='grep --color=auto' 
alias rb='dbus-send --system --print-reply --dest="org.freedesktop.Hal" /org/freedesktop/Hal/devices/computer org.freedesktop.Hal.Device.SystemPowerManagement.Reboot'
alias pa='packer -Syu'
#export PS1="\n╔═ \[\033[01;32m\]\u@\h \[\033[01;0m\]\@ \n╚═══ \[\033[01;36m\]\w\[\033[01;34m\]->\[\033[00m\] "
#export PS2="\[\033[01;34m\]->\[\033[00m\] " 
set show-all-if-ambiguous on
export VISUAL="vim"
export EDITOR="vim"

#export PERL_LOCAL_LIB_ROOT="/home/comhack/perl5";
#export PERL_MB_OPT="--install_base /home/comhack/perl5";
#export PERL_MM_OPT="INSTALL_BASE=/home/comhack/perl5";
#export PERL5LIB="/home/comhack/perl5/lib/perl5/x86_64-linux-thread-multi:/home/comhack/perl5/lib/perl5";
#export PATH="/home/comhack/perl5/bin:$PATH";
#[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null


#Color Man Pages
#man() {
#	env \
#		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
#		LESS_TERMCAP_md=$(printf "\e[1;31m") \
#		LESS_TERMCAP_me=$(printf "\e[0m") \
#		LESS_TERMCAP_se=$(printf "\e[0m") \
#		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
#		LESS_TERMCAP_ue=$(printf "\e[0m") \
#		LESS_TERMCAP_us=$(printf "\e[1;32m") \
#			man "$@"
#}
PATH="${PATH}:/opt/android-sdk/platform-tools"

export _humblebundle4key\=3RBcWwkn4vnd\

