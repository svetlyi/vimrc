function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\e[93;49m\]\u\[\e[94;49m\]@\[\e[92;49m\]\h \w: [\t]\[\e[91;49m\]{*\$(parse_git_branch)}\n\[\e[97;49m\]>\\$ \[\e[0m\]"
