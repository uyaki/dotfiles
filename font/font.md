# 字体安装教程

- [字体安装教程](#字体安装教程)
  - [资源库](#资源库)
  - [字体安装](#字体安装)
    - [macOS](#macos)
    - [linux](#linux)
    - [windows](#windows)
  - [在终端使用](#在终端使用)
    - [iterm2 配置方式](#iterm2-配置方式)
    - [windows Terminal 配置方式](#windows-terminal-配置方式)

## 资源库

官网：[ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

---

## 字体安装

### macOS

```sh
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

### linux

```sh
## 下载
wget -O hack.zip https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip
## 解压
unzip -d hack hack.zip
## 复制到系统字体库
cp hack/ttf/hack-*.ttf /usr/local/share/fonts/
## 重建字体索引
fc-cache -f -v
## 查看是否生效
fc-list | grep "Hack"
```

### windows

> 默认工作目录 `~/Downloads/nerd-fonts`
> 字体存放目录 `~/Downloads/nerd-fonts/patched-fonts/<字体名文件夹>`

```sh
## 下载字体
curl.exe -L -o $HOME/Downloads/nerd-fonts/Meslo.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip

## 下载批量安装执行脚本
### 方法1
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/install.ps1
### 方法2
wget --no-check-certificate -P $HOME/Downloads/nerd-fonts https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/install.ps1
### 方法3
curl.exe -L -o $HOME/Downloads/nerd-fonts/install.ps1 https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/install.ps1

## 解压(注意-o后没有空格)
7z x $HOME/Downloads/nerd-fonts/Meslo.zip -oC:/Users/uyaki/Downloads/nerd-fonts/patched-fonts/Meslo

## 执行脚本
./install.ps1
```

> Could not resolve host: raw.githubusercontent.com
> 通过 [https://www.ipaddress.com/](https://www.ipaddress.com/) 查询真实地址，如185.199.108.133，
> - 添加到/etc/hosts
> - 或者临时使用路径185.199.108.133/ryanoasis/nerd-fonts/master/install.ps1下载

---

## 在终端使用
### iterm2 配置方式

`iTerm` -> `Preferences` -> `Profiles` -> `Text` -> `font` -> `Hack Nerd Font`

### windows Terminal 配置方式

- `设置` -> `配置文件` -> 选中具体配置文件 -> `外观` -> `字体` -> `Hack Nerd Font`