# ubuntu-install

- [ubuntu-install](#ubuntu-install)
  - [使用 ssh连接服务器](#使用-ssh连接服务器)
  - [注册ssh到authorized_keys](#注册ssh到authorized_keys)
  - [切换到管理员角色](#切换到管理员角色)
  - [Clone project](#clone-project)
  - [在本地安装字体（非必须）](#在本地安装字体非必须)
  - [安装clash（非必须）](#安装clash非必须)

---

## 使用 ssh连接服务器
```sh
ssh -o ServerAliveInterval=180 -o ServerAliveCountMax=3 -o KeepAlive=yes [user]@[ip]
## 如果你是重装服务器可能还需要重置下ssh
ssh-keygen -R [ip]
```

---

## 注册ssh到authorized_keys

- 本机操作
```sh
cat ~/.ssh/id_rsa.pub
```

- 服务器操作
```sh
echo '<id_rsa.pub>' >>  >> ~/.ssh/authorized_keys
```

> 注意，此时的ssh信息是在ubuntu用户下完成，如果需要root权限，需要切换到root执行

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

## 在本地安装字体（非必须）

> 使用zsh主题[powerlevel10k](https://github.com/romkatv/powerlevel10k)，需要在客户端下载字体 [hack-nerd-font](https://github.com/ryanoasis/nerd-fonts)

[字体字体安装教程](./../font/font.md)

---

## 安装clash（非必须）

[clash in docker](./../clash_in_docker/clash_in_docker.md)