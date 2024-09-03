# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/stianste/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(
	git vi-mode history-substring-search
)

source $ZSH/oh-my-zsh.sh

# Required for signing commits with gpg
export GPG_TTY=$(tty)

### ALIASES ###
# General aliases
alias i='idea'
alias npmci='rm -rf node_modules && npm install'
alias npmsci='rm -rf node_modules package-lock.json && npm install'

alias s='source ~/.zshrc'
alias z='vim ~/.zshrc'


alias k3000='lsof -ti :3000 | xargs kill'
alias k3001='lsof -ti :3001 | xargs kill'
alias k8000='lsof -ti :8000 | xargs kill'
alias k8001='lsof -ti :8001 | xargs kill'

alias tm='tmux attach'

export CLICOLOR=1
export TERM=xterm-256color
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.11.jdk/Contents/Home

export PATH=$PATH:$JAVA_HOME
export PATH=$PATH:/opt/apache-maven-3.8.1/bin
alias maven='/opt/homebrew/Cellar/maven/3.8.1/bin/mvn'

# Java
alias java8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`"
alias java11="export JAVA_HOME=`/usr/libexec/java_home -v 11`"
alias java12="export JAVA_HOME=`/usr/libexec/java_home -v 12`"
alias java17="export JAVA_HOME=`/usr/libexec/java_home -v 17`"
alias java18="export JAVA_HOME=`/usr/libexec/java_home -v 18`"
alias java21="export JAVA_HOME=`/usr/libexec/java_home -v 21`"

# git
alias git-undo-last-commit-but-keep-changes='git reset HEAD^'
alias    git-undo='git-undo-last-commit-but-keep-changes'
alias       amend='git add -A && git commit --amend --no-edit'
alias      amende='git add -A && git commit --amend'
alias      amendf='amend && git push --force'
alias     amendef='amende && git push --force'
alias          ga='git add -A'
alias          gcm='git commit -m'
alias         gmm='git co master && git pull && git co -'
alias          gd='git diff'
alias          gs='git status'
alias          gp='git push'
alias        gitm='git co master && git pull && git co -'
alias       gitrm='git co master && git pull && git co - && git rebase master'
alias      gitrma='git co main && git pull && git co - && git rebase main'
alias       gitmm='git co master && git pull && git co - && git merge master'
alias      gitmma='git co main && git pull && git co - && git merge main'
alias       gitlm='(git co master || git co main) && git pull'
alias last-commit='git show $(git rev-parse HEAD)'
alias stash-abort='git reset --merge'
alias glog='git log --oneline'
alias gl='git log --oneline'

#maven
alias mci='mvn clean install -U'
alias mcil='lint || mvn clean install -U'
alias mvnr='mvn spring-boot:run'
alias mcir='mvn clean install && mvnr'

#gradle
alias gradle='gradle'
alias gb='lint && ./gradlew build'
alias gt='./gradlew test'
alias gradler='./gradlew bootRun'
alias gr='./gradlew run'

#postgres
alias restart-postgres='brew services stop postgresql && brew services start postgresql'

# https://unix.stackexchange.com/questions/97843/how-can-i-search-history-with-text-already-entered-at-the-prompt-in-zsh
# Enable history when pressing up and down:
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey '^l' autosuggest-accept
# Requires changes in iterm: https://superuser.com/questions/349439/how-to-bind-command-key-in-zsh
bindkey '^[begin' autosuggest-accept
# Tab
# bindkey '^I' autosuggest-accept

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

# Translate spaces between words to newlines (use: nl < word-separated-file)
nl() {
    tr ' ' $'\n' |  sed -e '/^\s*$/d'
}
# Translate newlines to spaces (use: space < server-list)
space() {
    tr $'\n' ' '
}

# Misc
alias speak-loud='python ~/projects/dotfiles/scripts/letter_emojies.py'

### Python
eval "$(pyenv init -)"
pyenv global 3.9.15
alias python='python3'
#### Path
export PATH="/opt/homebrew/opt/python@3.9/libexec/bin/python:$PATH"

# Run and start services
skhd --start-service
java21
# nvm use 20

eval "$(starship init zsh)"
