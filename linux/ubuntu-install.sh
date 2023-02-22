# this script setup my personal ubuntu setup

# install basic tools, grouped line by line
## apt 更新可用软件包列表 &&  通过 卸载/安装/升级 来更新系统
sudo apt update && sudo apt upgrade -y

###  安装git 
###  gnutls-bin git配置防止 GnuTLS recv error (-110)
sudo apt install -y git gnutls-bin
# git config --global http.sslVerify false
# git config --global http.postBuffer 1048576000
git config --global user.name "Your Name"
git config --global user.email "youremail@yourdomain.com"

### 安装 ssh vim  docker tree 
sudo apt install -y ssh vim tree 

## fish
sudo apt install -y fish

## 拷贝一份默认的配置文件 需要先执行 fish 再 exit 才会有默认配置
cp /usr/share/fish/config.fish ~/.config/fish
## 设置 Fish Shell 为默认 shell
chsh -s /usr/bin/fish

### tmux autojump
sudo apt install -y autojump tmux

### 安装java maven
## sudo apt install -y openjdk-8-jdk maven

### docker
sudo apt install -y docker.io
### 安装docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

## install `oh-my-zsh`
## sudo sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

### 备份原始配置文件
## sudo mv ~/.zshrc ~/.zshrc_old
### 下载插件
## sudo git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
## sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
## sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

### 按需下载主题(需要配合客户端字体使用，达到最佳效果，见  linux/ubuntu-install.md)
## sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k


### 创建软链接，注意是否需要安装主题powerlevel10k

#### 无主题
## sudo ln -s ~/dotfiles/zsh/zshrc-linux-default.conf ~/.zshrc

#### 有主题powerlevel10k
## sudo ln -s ~/dotfiles/zsh/zshrc-linux.conf ~/.zshrc
### powerlevel10k配置文件，如果不需要这个主题，去掉zshrc-linux.conf 前7行和最后2行
## sudo ln -s ~/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh

## 安装pyenv , 默认目录 $HOME/.pyenv 会自动添加环境变量
### 查看可安装版本 pyenv install -l
### 安装 pyenv install 3.10.2 2.7.18
### 设置全局版本 pyenv global 3.10.2
### 设置本地版本 pyenv local 3.10.2 每当从此文件夹中调用时，都将使用给定的版本。
### 使用 pip（取消）安装任何库或修改版本文件夹中的文件后，必须运行以使用 python 和库的可执行文件的新填充码更新 pyenv。pyenv rehash
### 查看正在使用 pyenv version
### 查看所有版本 pyenv versions
### 安装相关依赖
sudo apt install -y --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev  llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev liblzma-dev python-dev libffi-dev python3-dev python3.x-dev
### 安装pyenv , 需要在zshrc中配置环境变量
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# 激活配置
## source ~/.zshrc

# 非必要的：卸载所有自动安装且不再使用的软件包
## sudo apt autoremove

