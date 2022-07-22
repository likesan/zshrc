## zsh env https://github.com/sj-log/zshrc

export PATH=/opt/homebrew/bin:$PATH

## Vim
alias v="nvim"
alias vc="nvim ~/.config/nvim/init.vim"


# Coding
c $1()
{
    cd ~/Coding/$1 &&
    pipenv shell &&
    v scraper.py
}

j ()
{
        cd ~/Coding/personal_notes && v . 
}

# git

g $1()
{
    git add . &&
    git commit -m "update $1" &&
    git push 
}

# zsh
alias zc="v ~/.zshrc"

zrn ()
{
        cd ~ &&
        git add . && 
        git commit -m "zsh renew" &&
        git push master master -f
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
