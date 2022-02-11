## -e 精确匹配 详见：https://docs.microsoft.com/zh-cn/windows/package-manager/winget/install
winget install -e --id 7zip.7zip
## 追加到环境变量 命令行使用7z 需要重启终端
## 使用该命令会覆盖全局 setx path "%path%;C:\Program Files\7-Zip" 
Set-ItemProperty -path HKCU:\Environment\ -Name Path -Value "$((Get-ItemProperty -path HKCU:\Environment\ -Name Path).Path);C:\Program Files\7-Zip"
## 安装wget
winget install -e --id GnuWin32.Wget
Set-ItemProperty -path HKCU:\Environment\ -Name Path -Value "$((Get-ItemProperty -path HKCU:\Environment\ -Name Path).Path);C:\Program Files (x86)\GnuWin32\bin"
## 安装gvim
winget install -e --id vim.vim
Set-ItemProperty -path HKCU:\Environment\ -Name Path -Value "$((Get-ItemProperty -path HKCU:\Environment\ -Name Path).Path);C:\Program Files\Vim\vim82"
## 安装neovim（可能需要开全局代理确保你能访问到https://get.scoop.sh） 默认路径 C:\tools\neovim\Neovim\bin
choco install -y neovim
Set-ItemProperty -path HKCU:\Environment\ -Name Path -Value "$((Get-ItemProperty -path HKCU:\Environment\ -Name Path).Path);C:\tools\neovim\Neovim\bin"

## 安装pyenv , 默认目录 $HOME/.pyenv 会自动添加环境变量
### 查看可安装版本 pyenv install -l
### 安装一到多个版本 pyenv install 3.9.10 3.5.2 
### 设置全局版本 pyenv global 3.9.10
### 设置本地版本 pyenv local 3.9.10 每当从此文件夹中调用时，都将使用给定的版本。
### 使用 pip（取消）安装任何库或修改版本文件夹中的文件后，必须运行以使用 python 和库的可执行文件的新填充码更新 pyenv。pyenv rehash
### 查看正在使用 pyenv version
### 查看所有版本 pyenv versions
choco install -y pyenv-win

## 安装idea
winget install -e --id JetBrains.IntelliJIDEA.Ultimate



## 安装 jdk

## 安装 maven

## 安装 gradle

## 安装 rang

## 安装 docker 需要重启电脑
## 启动docker desktop
## change the DNS go to Docker (TrayIcon) -> Settings -> Resources -> Network and set a fixed DNS server ip = 8.8.8.8
## enable the WSL2 go to Docker (TrayIcon) -> General -> Use the WSL 2 based engine
## enable Docker-compose go to Docker (TrayIcon) -> General -> Use Docker Compose V2

winget install -e --id Docker.DockerDesktop

## test
docker run --name repo alpine/git clone https://github.com/docker/getting-started.git
docker cp repo:/git/getting-started/ .
cd .\getting-started\
docker build -t docker101tutorial .
docker run -d -p 80:80 \ --name docker-tutorial docker101tutorial