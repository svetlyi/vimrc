#!/bin/bash
#clear file from comments and output $1 - comment, $2 - filename
alias clearize='function _clearize(){ grep -v "^\s*[$1]" $2 | sed "/^$/d"; }; _clearize'
alias ll='ls -la'
alias gimme='grep -ri —context=1 —color=always'
alias gs='git status'
