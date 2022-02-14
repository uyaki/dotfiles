# pyenv


## 配置pip源

> 配置文件位置：`~/.pip/pip.conf`

```sh
[global]
index-url = http://mirrors.cloud.tencent.com/pypi/simple
trusted-host = mirrors.cloud.tencent.com
```

## 安装依赖

Install All use:

```sh
$ sudo apt install -y python-dev libffi-dev python3-dev python3.x-dev
```

For **Python 2.x** use:

```sh
$ sudo apt install -y python-dev
```

For **Python 2.7** use:

```sh
$ sudo apt install -y libffi-dev
```

For **Python 2.x** use:

```sh
$ sudo apt install -y python3-dev
```

or for a specific version of Python 3, replace x with the minor version in

```sh
$ sudo apt install -y python3.x-dev
```


