# this script setup my personal ubuntu setup

## install basic tools, grouped line by line
### apt 更新可用软件包列表 &&  通过 卸载/安装/升级 来更新系统 && 卸载所有自动安装且不再使用的软件包
sudo apt update && sudo apt upgrade -y && sudo apt autoremove
### 安装 ssh git vim zsh tmux docker tree
sudo apt install -y ssh git vim zsh tmux docker.io tree autojump
### 安装java
sudo apt install -y openjdk-8-jdk

## install `oh-my-zsh`
### install `oh-my-zsh`
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
### 备份原始配置文件
mv ~/.zshrc ~/.zshrc_old
### 下载主题
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
### 下载插件
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
### 创建软链接
