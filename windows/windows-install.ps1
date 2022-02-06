## -e 精确匹配 详见：https://docs.microsoft.com/zh-cn/windows/package-manager/winget/install
winget install -e --id 7zip.7zip
## 追加到环境变量 命令行使用7z 需要重启终端
## 使用该命令会覆盖全局 setx path "%path%;C:\Program Files\7-Zip" 
Set-ItemProperty -path HKCU:\Environment\ -Name Path -Value "$((Get-ItemProperty -path HKCU:\Environment\ -Name Path).Path);C:\Program Files\7-Zip"
## 安装wget
winget install -e --id GnuWin32.Wget
Set-ItemProperty -path HKCU:\Environment\ -Name Path -Value "$((Get-ItemProperty -path HKCU:\Environment\ -Name Path).Path);C:\Program Files (x86)\GnuWin32\bin"


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