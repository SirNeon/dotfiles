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
alias mkgrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ls='ls --color=auto'
alias shutdown='sudo shutdown -h now'
alias update='sudo pacman -Syyu'
export EDITOR=emacs
