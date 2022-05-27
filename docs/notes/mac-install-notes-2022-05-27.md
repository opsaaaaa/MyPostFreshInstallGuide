---
slug: mac-install-notes
title: Mac Install Notes
created: 2022-05-27 14:35:35 -0600
author: Opsaaaaa
---


# Mac Install Notes

## Terminal Junkie

### 1. install home brew:
- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- [brew.sh](https://brew.sh)


### install oh-my-zsh
- [ohmyz.sh](https://ohmyz.sh/#install)
- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

```vim
# ~/.zshrc
ZSH_THEME="miloshadzic"
```

### Rvm with ruby
- [rvm.io/rvm/install](https://rvm.io/rvm/install)
- `\curl -sSL https://get.rvm.io | bash -s stable --ruby`
- reboot terminal
- make sure bundle is installed.
- `bundle --version`


### TLDR with man pages 
- [tldr-man](https://github.com/joelekstrom/tldr-man)
- (nvm dont do this it does not seem to work with oh-my-zsh)
- (Hit: better way to do this is with pandoc)
- (Maybe ill write a curl script to do this with pandoc instead. idk)
- (or jsut use a normal toldr client, if you dont want to download all the tldr pages.)

```
gem install ronn`
mkdir ~/.tldr && cd ~/.tldr`
curl https://raw.githubusercontent.com/joelekstrom/tldr-man/master/Makefile --output Makefile && make`
echo 'alias tldr="man -M ~/.tldr"' >> ~/.zshrc
tldr man
```

### fd-find

### setup git properly with ssh keys.
- [bitsrc-multi-git-accounts](https://blog.bitsrc.io/how-to-use-multiple-git-accounts-378ead121235)
```
mkdir ~/.shh && cd ~/.ssh
ssh-keygen -t rsa -C me@example.com -f id_rsa_mygituser
ssh-keygen -t rsa -C me@work.com -f id_rsa_workgituser
ssh-add ~/.ssh/id_rsa_mygituser
ssh-add ~/.ssh/id_rsa_workgituser
vim config
```
```
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/your-ssh-public-id
Host github.com-work
  HostName github.com
  User git
  IdentityFile ~/.ssh/your-work-ssh-public-id
```
[SSH key github](settings/keys)
```
pbcopy < id_rsa_mygituser.pub
...
pbcopy < id_rsa_workgituser.pub
```

## GUI software

### Brave
- [brave.com](https://brave.com/)
- [Stylus](https://chrome.google.com/webstore/detail/stylus/clngdbkpkpeebahjckkjfobafhncgmne)
- [Enpass](https://chrome.google.com/webstore/detail/enpass-password-manager/kmcfomidfpdkfieipokbalgegidffkal)


### Enpass
- [enpass.io](https://www.enpass.io/)


### Amethyst
- [ianyh.com/amethst](https://ianyh.com/amethyst/)
- `brew install --cask amethyst`







