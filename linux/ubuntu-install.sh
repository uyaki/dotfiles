# this script setup my personal ubuntu setup

# install basic tools, grouped line by line
## apt 更新可用软件包列表 &&  通过 卸载/安装/升级 来更新系统
sudo apt update && sudo apt upgrade -y

###  安装git zsh
sudo apt install -y git zsh
### 安装 ssh vim tmux docker tree autojump
sudo apt install -y ssh vim tmux tree autojump
### 安装java maven
sudo apt install -y openjdk-8-jdk maven

### docker
sudo apt install -y docker.io
### 安装docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

## install `oh-my-zsh`
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

### 备份原始配置文件
sudo mv ~/.zshrc ~/.zshrc_old
### 下载插件
sudo git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

### 按需下载主题(需要配合客户端字体使用，达到最佳效果，见  linux/ubuntu-install.md)
sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
### 创建软链接
sudo ln -s ~/dotfiles/zsh/zshrc-linux.conf ~/.zshrc
### powerlevel10k配置文件，如果不需要这个主题，去掉zshrc-linux.conf 前7行和最后2行
sudo ln -s ~/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh

### 激活配置
source ~/.zshrc

# 非必要的：卸载所有自动安装且不再使用的软件包
sudo apt autoremove
