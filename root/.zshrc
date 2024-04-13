export LANG=ja_JP.UTF-8

export OPENSCADPATH="$HOME/Documents/OpenSCAD/libraries/dotSCAD/src"
#sudo sh -c 'echo "setenv OPENSCADPATH $HOME/Documents/OpenSCAD/libraries/dotSCAD/src" >>/etc/launchd.conf'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

bindkey -v
bindkey -M viins '^f' autosuggest-accept
bindkey -M viins '^f' forward-char
bindkey -M viins '^b' backward-char
bindkey -M viins '^p' up-line-or-history
bindkey -M viins '^n' down-line-or-history
bindkey -M viins '^a' beginning-of-line
bindkey -M viins '^e' end-of-line
bindkey -M viins '^h' backward-delete-char
bindkey -M viins '^d' delete-char

alias -g G='| grep'
#source "$HOME/.rye/env"

# for homebrew
typeset -U path PATH
path=(
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /Library/Apple/usr/bin
  /usr/local/bin
)

#vscode
alias c='cursor' 
alias cjson='vi $HOME/Library/Application\ Support/Code/User/settings.json'
alias mk='make'

#platformio
alias piol='pio device list'
alias pioup='platformio run --target upload'

alias monitor='pio device monitor'

#cargo
export PATH="$HOME/.cargo/bin:$PATH"
alias cn='cargo new'
alias cr='cargo run'
alias cl='cargo clean'
alias ccy='cargo clippy'
alias cb='cargo build --release'
alias ct='cargo test'
alias ca='cargo add'
alias ci='cargo install'
alias cfi='cargo fix'
alias cf='cargo fmt'
alias cfe='cargo fetch'
alias cpa='cargo package'
alias cs='cargo search'

#Python
# alias pyenv='python -m venv venv'
alias act='. venv/bin/activate'
alias deact='deactivate'
alias frz='pip freeze'
alias req='pip freeze > requirements.txt'
alias uvi='uvicorn main:app --reload'

#Mongo
alias mongo='mongosh "mongodb+srv://cluster0.rqtfqi6.mongodb.net/myFirstDatabase" --apiVersion 1 --username ytr0'

#PostgreSQL
alias pqup='brew services start postgresql'
alias pqdown='brew services stop postgresql'
alias mydb='psql -h db.gqceuxncplqmklqolvrg.supabase.co -p 5432 -d postgres -U postgres'

#prisma
alias mig='npx prisma migrate dev --name init' #prisma.schemeからdb schemeを作る
alias prst='npx prisma studio'

#magick convert *.HEIC jpgs/*.jpg
#magick convert -delay 10 -loop 3870 IMG_*.HEIC test/*.jpg

# alias cdt="la $HOME/Desktop/; rm -rf $HOME/Desktop/*"
# alias cdl="la $HOME/Downloads/; rm -rf $HOME/Downloads/*"

alias htoj="magick mogrify -format jpg *.heic"

#for convenient setup
alias vi="vim"
alias vimrc="code ~/.vimrc"
alias zsh='code ~/.zshrc'
alias reload='source ~/.zshrc && exec zsh -l'
alias update='cp ~/.zshrc ~/ws/settings/zshrc/.zshrc; cp ~/.config/karabiner/karabiner.json ~/ws/settings/karabiner/karabiner.json; ghp settings'
alias karabiner='code ~/.config/karabiner/karabiner.json'

#for moving directories around
alias dt='cd ~/Desktop'
alias rt='cd ~'
alias ls="ls -G"
alias la="ls -G -a"
alias p="pushd"
alias rm='rm -rf'
alias zip.='zip -r "$(basename $(pwd)).zip" ./*'


if [[ -x `which colordiff` ]]; then
  alias diff='colordiff -u'
else
  alias diff='diff -u'
fi
#docker
#export DOCKER_BUILDKIT=1
# export COMPOSE_DOCKER_CLI_BUILD=1


# git init
# git add README.md
# git commit -m "first commit"
# git branch -M main
# git remote add origin https://github.com/ytr0/bun-docker.git
# git remote set-url origin git@github.com:ytr0/bun-docker.git
# git push --set-upstream origin main

#git
alias gs='git status'
alias gpl='git pull'
alias ga='git add .'

# alias gc='git commit -am'
alias gc='aicommits -a'
alias gp='git push -u origin'
alias gr='git rm --cached -r'
alias gcp='gc && gp'

eval "$(gh completion -s zsh)"

# git remote URL変更
ghc() {
  gh repo create $1 --private
}
grs() {
  git init
  git commit -m "first commit"
  git branch -M main
  git remote add origin https://github.com/ytr0/"$1".git
  git remote set-url origin git@github.com:ytr0/"$1".git
}
gcam() {
  git commit -am "$1"
  git push -u origin main
}
#git rm -r --cached {file_path} コミット時キャッシュの削除 / .gitignoreに追加したあと
alias gdel='git rm -r --cached' 

alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gm='git merge'
alias gd='git diff'
alias glog='git log --oneline --graph --decorate'
alias gstash='git stash'
alias gstashp='git stash pop'
#git config --global alias.ac '!git add -A && aicommits -a'

alias dbi='docker-compose build --parallel'
alias dbi!='docker-compose build --parallel --no-cache'
alias dup='dbi && docker-compose up --build'
alias dup!='dbi! && docker-compose up --build'
# alias dup='dbi && dup'
# alias dup!='dbi! && dup!'
alias dps='docker-compose ps'
alias down='docker-compose down'
alias down!='docker-compose down --rmi all --remove-orphans'
alias downn!='docker-compose down --rmi all --volumes --remove-orphans'
alias dor='down! && dup'
alias dor!='down! && dup!'
alias dst='docker stop $(docker ps -q)'
dex() {
    docker exec -it $1 bash
}
alias tup='tilt up'
alias town='tilt down'

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

#for git
#alias setup-git='git config --global user.name "ytr0221";git config --global user.email ytr0.ymail.ne.jp'
alias gitset='git config --global user.name "ytr0";git config --global user.email yu20@iamas.ac.jp'
alias ghm="~/ws/tools/git/memo.sh"
alias ghp="~/ws/tools/git/commit_and_push.sh"
# git rm -r --cached {file_path} コミット時キャッシュの削除

#for network
alias xui="ssh root@133.130.122.220 -p 443 -R 10000:localhost:22"
alias xui2="ssh root@118.27.110.204 -p 22"
alias parame="curl -o /Users/yu20/desktop/daegmael_paramekairos/paramekairos/test.csv https://api.xui.jp/test.csv"


#alias browser="Vivaldi"

#open functions
vh() {
  open -a Google\ Chrome http://haya14busa.com/vim-mnemonic/ #vim help
}
pb() {
  open -a Photo\ Booth
}
ob() {
  open -a Obsidian
}
no() {
  open -a Notion
}
sl() {
  open -a Slack
}
di() {
  open -a Discord
}
nt() {
  open -a Notes
}
gpt() {
	open -a Google\ Chrome https://chat.openai.com/chat
}
ch() {
	open -a Google\ Chrome
}
gho() {
	open -a Google\ Chrome https://github.com/ytr0\?tab\=repositories
}
ml() {
  open -a Google\ Chrome https://mail.google.com/mail/u/0/
}
yt() {
  open -a Google\ Chrome https://www.youtube.com/
}
nf() {
  open -a Google\ Chrome https://www.netflix.com/browse
}
dl() {
  open -a Google\ Chrome https://www.deepl.com/ja/translator
}
gpt() {
  open -a Google\ Chrome https://chat.openai.com/chat
}
# gm() {
# 	local str opt
  
#   if [ "$2" != "" ]; then
#     echo $2 "->" $1
# 		#opt="${opt}&q=${str}"
#     #open -a Google\ Chrome https://www.google.com/maps/search/$opt
#     opt="?api=1&origin={$1}&destination={$2}"
#     open -a Google\ Chrome https://www.google.com/maps/dir/$opt
#     return 0

#   elif [ $# != 0 ]; then
# 		for i in $*; do
# 			str="$str${str:++}$i"
# 		done
# 		value="${str}"
    
#     echo $1
# 		opt='search?num=100'
# 		opt="${opt}&q=${str}"
#     open -a Google\ Chrome https://www.google.com/maps/search/$opt
#     return 0
# 	fi

# }

killp() {
  if [ $# -eq 0 ]; then
    echo "Usage: killp <port>"
    return 1
  fi

  if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Error: Port must be a number."
    return 1
  fi

  local pids
  pids=$(lsof -t -i:$1)

  if [ -z "$pids" ]; then
    echo "No process found on port $1."
    return 1
  fi

  # 各PIDに対して個別にkillコマンドを実行
  kill -9 $(lsof -t -i:$1)
}




gl() {
	local str opt
	if [ $# != 0 ]; then
		for i in $*; do
			str="$str${str:++}$i"
		done
		opt='search?num=100'
		opt="${opt}&q=${str}"
	fi
	open -a Google\ Chrome http://www.google.co.jp/$opt
}
mm() {
	local str
	if [ $# != 0 ]; then
		for i in $*; do
			str="$str${str:++}$i"
		done
		value="${str}"
	fi

  #array=(${(ps: :)value}) 
  array=(${(ps:-:)value})

  if [ "${array[1]}" != "" ]; then
     
  else
    unset ${array[@]}
    unset str
    unset value
    return 0
  fi

  if [ "${array[2]}" != "" ]; then
    echo ""
  else
    array+="todo"
  fi

  local check
  if [ "${array[3]}" != "" ]; then
    check=true
  else
    check=false
  fi

  curl -X POST https://api.notion.com/v1/pages \
  -H "Authorization: Bearer secret_Nc0C0J9fcDkmqRZOmhakKrARqC5whbV6yyidQYkcGyO" \
  -H "Content-Type: application/json" \
  -H "Notion-Version: 2021-08-16" \
  --data '{
    "parent": { "database_id": "84f6add910424ec89490d44323d3bf14" },
    "properties": {

      "Title": {
        "title": [
          {
            "text": {
              "content": "'${array[1]}'"
            }
          }
        ]
      },
      "Tags": {
        "multi_select": [
          {"name": "'${array[2]}'"}
        ]
      },
      "Done": {
        "checkbox": '${check}'
      }
    }

  }'
  unset ${array[@]}
  unset str
  unset value
}



# other alias
alias zshcolor='for c in {000..255}; do echo -n "\e[38;5;${c}m $c" ; [ $(($c%16)) -eq 15 ] && echo;done;echo'







#export PS1="%d %% "
#export USER=$USER
#alias norminette="~/.norminette/norminette.rb"
#alias -g G='| grep'
#alias norm='norminette -R CheckForbiddenSourceHeader'
#alias cmp='gcc -Wall -Wextra -Werror'


#if [[ `uname` == "Darwin" ]]; then
#    alias -g C='| pbcopy'
# elif command yum > /dev/null; then
#     alias -g C='| xlip'
# fi


autoload -Uz vcs_info
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "!"
zstyle ':vcs_info:git:*' unstagedstr "/+"
zstyle ':vcs_info:*' formats "(%b)%f%F{yellow} %c%u"
zstyle ':vcs_info:*' actionformats '(%b|%a)'
precmd(){ vcs_info }

autoload -Uz colors && colors
export LSCOLORS=ahfxcxdxfxegedabagacad
export LS_COLORS='di=1;34:ln=35:so=32:pi=33:ex=35:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

function rprompt-git {
  local branch_name st branch_status

  branch="${vcs_info_msg_0_}"
  color='%{\e[38;5;' #  文字色を設定
  green='010m%}'
  red='009m%}'
  yellow='226m%}'
  blue='033m%}'
  reset='%{\e[0m%}'   # reset

  if [ ! -e  ".git" ]; then
    return
  fi
  if [[ -z ${vcs_info_msg_0_} ]]; then
    return
  fi    
  echo $branch
}

nprom () {
    setopt prompt_subst
    #local rbase=$'%{\e[33m%}[%%{\e[m%}' lf=$'\n'
    #local pct=$'%0(?||%18(?||%{\e[31m%}))%#%{\e[m%}'
    #RPROMPT="%9(~||$rbase)"
    #    case "$USER" in
    #      yatex)	PROMPT=$'%{\e[33m%}%U%m{%n}%%%{\e[m%}%u ' ;;
    #      java)	PROMPT=$'%{\e[36m%}%U%m{%n}%%%{\e[m%}%u ' ;;
    #      *)
    local pbase=$'%U%B%/%u \n%{\e[1;31m%}$ %{\e[m%}'
    
    # PROMPT="%9(~|$rbase$lf|)$pbase"
    PROMPT="$pbase"
    RPROMPT=$'`rprompt-git` %{\e[1;32m%}[%*]%{\e[m%}'
    PROMPT2="%_%% "
    SPROMPT="%r is correct? [n,y,a,e]:] "
    #    ;;
    #   esac
    # [[ "$TERM" = "screen" ]] && RPROMPT="[%U%~%u]"
}
nprom



setopt auto_list
setopt auto_menu
autoload -U compinit && compinit
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*:default' menu select=2
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
### 補完方法毎にグループ化する。
zstyle ':completion:*' format '%B%F{yellow}%d%f%b'
zstyle ':completion:*' group-name ''

setopt list_packed
setopt correct
setopt magic_equal_subst


setopt complete_in_word

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char

DIRSTACKSIZE=100
setopt AUTO_PUSHD
setopt pushd_ignore_dups

setopt AUTO_CD
cdpath=(.. ~ ~/src)
chpwd() { ls }

export EDITOR=vim
bindkey -v

setopt extended_glob
setopt GLOBDOTS

setopt noautoremoveslash                      #末尾から自動的に / を除かない
setopt auto_param_slash                       # 末尾に自動的に / を追加
setopt mark_dirs
setopt auto_param_keys
#"*" にドットファイルをマッチ
setopt NUMERIC_GLOB_SORT
#補完候補リストの日本語を正しく表示
setopt PRINT_EIGHT_BIT
#右プロンプトに入力がきたら消す
setopt TRANSIENT_RPROMPT
#戻り値が0以外の場合終了コードを表示
unsetopt PRINT_EXIT_VALUE
#echo {a-z}などを使えるようにする
setopt BRACE_CCL
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


HISTFILE=$HOME/.zsh-history
HISTSIZE=1000000
SAVEHIST=1000000




# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/work/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/work/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/work/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/work/google-cloud-sdk/completion.zsh.inc'; fi
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# bun completions
[ -s "/Users/work/.bun/_bun" ] && source "/Users/work/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
