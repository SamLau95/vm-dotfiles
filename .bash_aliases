###   Handy Extract Program

ext () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1        ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       unrar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xvf $1        ;;
            *.tbz2)      tar xvjf $1      ;;
            *.tgz)       tar xvzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

function cdl()
{
  if [ $# -eq 0 ]; then
    builtin cd && ls
  else
    builtin cd "$*" && ls
  fi
}
alias cd="cdl"
# alias rm="trash"
set -o noclobber
alias ll="ls -alrtF --color"
alias la="ls -A"
alias l="ls -CF"
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias m='less'
alias ..='cd ..'
alias ...='cd ..;cd ..'
alias md='mkdir'
alias cl='clear'
alias du='du -ch --max-depth=1'
alias treeacl='tree -A -C -L 2'
alias open='gnome-open'
alias install='sudo dpkg -i'
alias apt='sudo apt-get'
alias upd='sudo apt-get update'
alias ins='sudo apt-get install'
alias upg='sudo apt-get upgrade'
alias auto='sudo apt-get autoremove'
alias pgr='ps aux | grep $*'

alias sou='source ~/.bashrc'

alias em='emacs -nw'
alias v=vim
export EDITOR='vim'
export VISUAL='vim'

alias rc='v ~/.zshrc'
alias brc='v ~/.bashrc'
alias al='v ~/.bash_aliases'
alias vrc='v ~/.vimrc'
alias lrc='v ~/.vimrc.local'
alias src='v ~/.screenrc'
alias sshrc='v ~/.ssh/config'
alias trc='v ~/.tmux.conf'

alias tor='tmuxinator'
alias tmux='tmux -2'

# alias git=hub
alias clo='git clone'
alias che='git checkout'
alias mas='git checkout master'
alias br='git branch'
alias mer='git merge'
alias reb='git rebase'
alias sta='git status'
alias stash='git stash'
alias rem='git remote'
alias reset='git reset'
alias dif='git diff'
alias com='git commit -m'
alias coa='git commit -am'
alias pu='git push'
alias puh='git push heroku master'
alias pul='git pull --rebase'
alias pom='git pull origin master'
alias add='git add'
alias log='git log'
alias amm='git commit --amend -m'
alias amc='git commit --amend -C HEAD'

staging=calblueprint-new-staging
production=calblueprint-new
function st() {
    heroku "$@" --remote staging
}
function prod() {
    heroku "$@" --remote production
}
alias h='heroku'
alias puhs='git push staging master'
alias puhp='git push prod master'
alias hmi='heroku run rake db:migrate'
alias hre='heroku pg:reset DATABASE'
alias hse='heroku run rake db:seed'
alias smi='st run rake db:migrate'
alias sse='st run rake db:seed'
alias sre='st pg:reset DATABASE'
alias sfig='figaro heroku:set -e staging -a $staging'
alias pmi='prod run rake db:migrate'
alias pse='prod run rake db:seed'
alias pre='prod pg:reset DATABASE'
alias pfig='figaro heroku:set -e production -a $production'
alias deploy='hre && hmi && hse'
alias sdeploy='sre && smi && sse'
alias pdeploy='pre && pmi && pse'

alias s='rails s'
alias rls='rvm gemset list'
alias ruse='rvm gemset use'
alias rset='rvm --ruby-version use'
alias fs='foreman start -f Procfile.dev'
alias bun='bundle'
alias stop='rm .zeus.sock'
alias c='rails c'
alias pc='pry -r ./config/environment'
alias ann='annotate'
alias met='metric_fu'
alias ggr='gem list | grep'
alias rgr='rake routes | grep'
alias z='zeus'
alias zs='zeus start'
alias rsp='rspec spec/'
alias mi='rake db:migrate && ann'
alias tmi='rake db:migrate RAILS_ENV=test'
alias res='rake db:reset'

