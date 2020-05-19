# find by typing `uname -n`
nygcbook="ASHAIBER01"
macbook="Alons-MBP.stny.rr.com"
mski="mskilab01.c.nygenome.org"

# -----------------------------------------------------------------------------
# SHARED BY ALL {{{
# -----------------------------------------------------------------------------

# if you're scp-ing, we're done
if [ -z "$PS1" ]; then
    return
fi

# Define your aliases here ...
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Define your aliases here ...
if [ -f ~/.bash_utils ]; then
    source ~/.bash_utils
fi

# autocorrects small mistakes
shopt -s cdspell

# ls coloring
export CLICOLOR=1
export LSCOLORS=gxhxCxDxBxegedabagaced


printf '\033[0;31m'"aliasing sed to gsed"'\033[0m'"\n"
alias sed=gsed
export text_editor="TextWrangler"
export excel="Microsoft Excel"

MY_R_LIBS="/Library/Frameworks/R.framework/Versions/3.6/Resources/library"
if [ -n $R_LIBS ]; then
   export R_LIBS=$MY_R_LIBS:$R_LIBS
else
   export R_LIBS=$MY_R_LIBS
fi

function mskisetup {
# >>>>> m-ski stuff >>>>>

    alias mski='ssh -Y ashaiber@mskilab'
    alias scu='ssh -Y ashaiber@scu'
    alias gmski='cd ~/Dropbox/mski'

# <<<<< m-ski stuff <<<<<
}

function merenlabsetup {
# >>>>> meren lab stuff >>>>>

    alias midway="ssh midway"
    alias b="ssh barhal"
    alias w="cd ~/00_Projects/Classification_of_genes_with_metagenomes/Bfrag/"
    alias a="cd ~/github/anvio"
    alias s="cd /Users/alonshaiber/github/MerenLab-workflows"
    alias fmt="cd /Users/alonshaiber/00_Projects/FMT/"
    alias barhali="ssh -L 32120:localhost:32120 -L 32121:localhost:32121 -L 32122:localhost:32122 -L 32123:localhost:32123 -L 32124:localhost:32124 -L 32125:localhost:32125 -L 32126:localhost:32126 -L 32127:localhost:32127 -L 32128:localhost:32128 -L 32129:localhost:32129 barhal | tee /dev/tty | python3 ~/.ssh/run_webbrowser.py"
    export m="ashaiber@barhal:"
    alias oral="cd /Volumes/GoogleDrive/My\ Drive/00_Collaborations/Tom/Oral_project/"
    alias bund="bundle exec jekyll serve --incremental"

# <<<<< meren lab stuff <<<<<
}
