# clash in docker

- [clash in docker](#clash-in-docker)
  - [介绍](#介绍)
  - [配置文件](#配置文件)
    - [docker-compose.yaml](#docker-composeyaml)
    - [config.yaml](#configyaml)
  - [使用](#使用)
    - [启动与关闭clash](#启动与关闭clash)
    - [自定义一键启动、关闭代理命令](#自定义一键启动关闭代理命令)
    - [网页控制](#网页控制)

## 介绍

本文采用`docker-compose`部署，并配置了一键开启关闭命令 `proxy` 和 `unproxy`

> 其他方式请看[官方文档](https://github.com/Dreamacro/clash/wiki/clash-as-a-daemon#docker)

---

## 配置文件

### docker-compose.yaml

```sh
## 复制配置文件
$ cp clash_in_docker/docker-compose.yaml /opt/Clash/docker-compose.yaml
```

`docker-compose.yaml` 内容如下：

```yaml
version: '3'
services:
  clash:
    # ghcr.io/dreamacro/clash
    # ghcr.io/dreamacro/clash-premium
    # dreamacro/clash
    # dreamacro/clash-premium
    image: dreamacro/clash
    container_name: clash
    volumes:
      - ./config.yaml:/root/.config/clash/config.yaml
      # - ./ui:/ui # dashboard volume
    ports:
      - "7890:7890" # http port
      - "7891:7891" # socks5 port
      - "9090:9090" # external controller (Restful API)
    # # TUN
    # cap_add:
    #   - NET_ADMIN
    # devices:
    #   - /dev/net/tun
    restart: unless-stopped
    # network_mode: "bridge" # or "host" on Linux 或者直接注释掉这一行
```

### config.yaml

1. 修改文件内容如下：

```yaml
# http port
port: 7890
# socks5 port
socks-port: 7891

# `allow-lan` must be true in your config.yaml
allow-lan: true
external-controller: "0.0.0.0:9090"
```

> 文件的获取各凭本事 🤪

> 完整配置项请查阅[官方文档](https://github.com/Dreamacro/clash/wiki/configuration#introduction)


2. 将 `config.yaml` 文件放在 `docker-compose.yaml` 文件同级目录下

```sh
$ scp config.yaml root@<ip>:/opt/Clash/config.yaml
```
 
--- 

## 使用

### 启动与关闭clash

```sh
## 启动
$ docker-compose up -d
## 关闭
$ docker-compose stop
```

### 自定义一键启动、关闭代理命令

- 写入 `~/.zshrc`

```sh
# 一键开启代理并显示当前ip
proxy(){
  export https_proxy=http://127.0.0.1:7890
  export http_proxy=http://127.0.0.1:7890
  export all_proxy=socks5://127.0.0.1:7891
  curl https://ip.gs
}
# 一键关闭代理并显示当前ip
unproxy(){
  unset https_proxy
  unset http_proxy
  unset all_proxy
  curl https://ip.gs
}
```

- 激活

```sh
$ source ~/.zshrc
```

### 网页控制

本地浏览器打开 [http://clash.razord.top/#/proxies](http://clash.razord.top/#/proxies)，输入ip、端口可以远程控制clash