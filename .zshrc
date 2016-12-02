# Lines configured by zsh-newuser-install
autoload -U colors && colors
PROMPT="%{$fg_bold[red]%}%n%{$reset_color%}@%{$fg_bold[cyan]%}%m%{$reset_color%}%~> "
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/neon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls='ls --color=auto'
alias makemenu='xdg_menu --format awesome --root-menu /etc/xdg/menus/arch-applications.menu >~/.config/awesome/archmenu.lua'
alias mkgrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias shutdown='sudo shutdown -h now'
alias update='sudo xbps-install -Suv'

export EDITOR=gvim
export PATH=$PATH:/home/neon/.cargo/bin:/home/neon/.gem/ruby/2.3.0/bin:/home/neon/.local/bin

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
