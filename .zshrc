#reload at the start
source ~/.bash_profile

#text coloring
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

#tab autocompletion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/andy/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/andy/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/andy/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/andy/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#rosetta aliasing for homebrew on M1 mac

alias brew='arch -x86_64 /usr/local/bin/brew'
