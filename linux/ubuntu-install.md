## 使用 ssh连接服务器
```sh
ssh -o ServerAliveInterval=180 -o ServerAliveCountMax=3 -o KeepAlive=yes [user]@[ip]
## 如果你是重装服务器可能还需要重置下ssh
ssh-keygen -R [ip]
```

## 安装git、zsh
```sh
sudo apt install -y git zsh
```
## 安装zsh
```sh
### install `oh-my-zsh`
sudo sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## clone project
```sh
sudo git clone https://github.com/uyaki/dotfiles.git /home/uyaki/dotfiles
```

> 文件默认操作路径 `/home/uyaki/dotfiles`

```
cd /home/uyaki/dotfiles
sudo chmod 777 ./linux/*-install.sh
./linux/ubuntu-install.sh
```