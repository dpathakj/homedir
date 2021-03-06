# Support tramp
[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return;

# The following lines were added by compinstall

zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _expand _complete _ignored _match _correct _approximate _prefix
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' substitute 1
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/ec2-user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory autocd extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install

alias rm="rm -i"
alias l="less"
alias d="dirs -v" #  todo: this doesn't work, find out why
r() {
    printf 'Most recent 10 files in \e[31m'
    printf $PWD
    printf '\e[0m:\n'
    ls -ltr | tail
}

export PATH=$PATH:~/bin/util
export PATH=$PATH:~/bin
export PATH=$PATH:~/node-v4.1.2-linux-x64/bin

alias g="git"
alias gs="git status"
alias gd="git diff --color-words=."
alias ga="git add"
alias gc="git commit"
alias gco="git checkout"

if which git 2>&1 > /dev/null
then
    # git status in prompt
else
    # nope.
fi

export EDITOR=ecl

# java - on os x, want java 8
if which /usr/libexec/java_home &> /dev/null
then
    export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
fi
