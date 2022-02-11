# ubuntu-install

- [ubuntu-install](#ubuntu-install)
  - [使用 ssh连接服务器](#使用-ssh连接服务器)
  - [切换到管理员角色](#切换到管理员角色)
  - [Clone project](#clone-project)
  - [安装字体](#安装字体)
  - [安装clash](#安装clash)

---

## 使用 ssh连接服务器
```sh
ssh -o ServerAliveInterval=180 -o ServerAliveCountMax=3 -o KeepAlive=yes [user]@[ip]
## 如果你是重装服务器可能还需要重置下ssh
ssh-keygen -R [ip]
```

---

## 切换到管理员角色

```sh
## 切换到root下
sudo su
## `~` => `/root`
cd ~
```

---

## Clone project

```sh
sudo git clone https://github.com/uyaki/dotfiles.git ~/dotfiles
```

> 文件默认操作路径 `/root/dotfiles`

> 其实不建议执行脚本，因为执行过程过长，不利于问题及时解决。

> 建议手动复制需要的执行语句执行

```sh
cd dotfiles
sudo chmod 777 ./linux/*-install.sh
./linux/ubuntu-install.sh
```

---

## 安装字体

> 使用主题[powerlevel10k](https://github.com/romkatv/powerlevel10k)，需要在客户端下载字体 [hack-nerd-font](https://github.com/ryanoasis/nerd-fonts)

- 下面附上mac下载方式，其他系统请参照官网[hack-nerd-font](https://github.com/ryanoasis/nerd-fonts)

```sh
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```
- iterm2 配置方式
  - `iTerm -> Preferences -> Profiles -> Text -> font` -> 修改成 Hack Nerd Font

## 安装clash

[clash in docker](./../clash_in_docker/clash_in_docker.md)