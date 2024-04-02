
#Config template for Unix

```
#Network

# TailScale VPN
curl -fsSL https://tailscale.com/install.sh | sh
tailscale up
tailscale status




sudo apt-get install zip unzip



git config --global user.name "ytr0"
git config --global user.email yu20@iamas.ac.jp
git config --global core.editor "vim"
git config -l
eval `ssh-agent`
ssh-add ./github_rsa
ssh-add -l


alias vi="vim"
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
```

