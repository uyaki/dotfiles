## 使用 ssh连接服务器
```bash
ssh -o ServerAliveInterval=180 -o ServerAliveCountMax=3 -o KeepAlive=yes [user]@[ip]
## 如果你是重装服务器可能还需要重置下ssh
ssh-keygen -R [ip]
```
## 切换到管理员角色
```bash
## 切换到root下
sudo su
## `~` => `/root`
cd ~
```

## 安装git、zsh

```bash
sudo apt install -y git zsh
```

## 安装zsh

```bash
### install `oh-my-zsh`
sudo sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## clone project

```bash
sudo git clone https://github.com/uyaki/dotfiles.git ~/dotfiles
```

> 文件默认操作路径 `/root/dotfiles`

> 其实不建议执行脚本，因为执行过程过长，不利于问题及时解决。

> 建议手动复制需要的执行语句执行

```bash
cd dotfiles
sudo chmod 777 ./linux/*-install.sh
./linux/ubuntu-install.sh
```

## powerlevel10k主题需要在客户端安装字体

> 使用主题[powerlevel10k](https://github.com/romkatv/powerlevel10k)，需要在客户端下载字体 [hack-nerd-font](https://github.com/ryanoasis/nerd-fonts)

下面附上mac下载方式，其他系统请参照 [hack-nerd-font](https://github.com/ryanoasis/nerd-fonts)

```bash
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

- `iTerm -> Preferences -> Profiles -> Text -> font` -> 修改成 Hack Nerd Font
