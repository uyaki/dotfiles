# this script setup my personal ubuntu setup

## install basic tools, grouped line by line
### apt 更新可用软件包列表 &&  通过 卸载/安装/升级 来更新系统 && 卸载所有自动安装且不再使用的软件包
sudo apt update && sudo apt upgrade -y && sudo apt autoremove
### 安装 ssh vim tmux docker tree
sudo apt install -y ssh vim tmux docker.io tree autojump
### 安装java
sudo apt install -y openjdk-8-jdk
### install Maven
sudo wget https://dlcdn.apache.org/maven/maven-3/3.8.4/binaries/apache-maven-3.8.4-bin.tar.gz -P /tmp
sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.8.4 /opt/maven

## install `oh-my-zsh`
### 备份原始配置文件
sudo cp ~/.zshrc ~/.zshrc_old
### 下载主题
sudo git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
### 下载插件
sudo git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
### 创建软链接
sudo ln -s /home/ubuntu/dotfiles/zsh/zshrc-linux.conf ~/.zshrc
sudo ln -s /home/ubuntu/dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
### 激活配置
source ~/.zshrc
