# ranger

- [ranger](#ranger)
  - [官网](#官网)
  - [安装](#安装)
  - [配置](#配置)
  - [图片预览](#图片预览)
  - [快捷键](#快捷键)


## 官网

[https://github.com/ranger/ranger](https://github.com/ranger/ranger)

## 安装

- apt 

```sh
## caca-utils：img2txt 图片
## highlight：代码高亮
## atool：存档高亮
## w3m: html页面预览
## mediainfo: 多媒体文件预览
$ sudo apt install -y caca-utils highlight atool w3m mediainfo
$ sudo apt install -y ranger
```

- pip

```sh
## ranger
$ pip install ranger-fm
```

## 配置

- 生成配置文件
  
```sh
$ ranger --copy-config=all
```

将在 `~/.config/ranger` 中生成一系列配置文件，其中ranger主要有4个配置文件：

- `rc.conf` 常用于设置选项和绑定快捷键.(最常用)
- `scope.sh` 常用于设置文件的预览方式.
- `rifle.conf` 常用于设置使用那个软件来打开文件.
- `commands.py` python文件,增强和改进ranger的各种功能.

- 禁用默认配置

```sh
export RANGER_LOAD_DEFAULT_RC=FALSE
```

## 图片预览

安装 [ueberzug](https://github.com/seebye/ueberzug)

```sh
## 需提前安装相关依赖
$ sudo apt install -y libx11-dev libxext-dev
$ pip install ueberzug
```

修改配置文件`~/.config/ranger/rc.conf`

```sh
set preview_images true
set preview_images_method ueberzug
set draw_borders true
```

## 快捷键

|快捷键|功能|
|:---:|:---|
|📖 **全局快捷键**||
|`q`|退出ranger|
|`esc`|退出当前指令界面|
|`r`|进入可选操作菜单|
|`g`|查看`g`+`<key>`组合键可以`快速到达`的文件夹|
|`o`|查看`o`+`<key>`组合键可以实现的`排序方式`|
|`/`+`<content>`+`Enter`|查找包含`content`的文件/文件夹|
|`shift + s`|退出ranger并进入当前文件夹|
|`y`|查看 `y`+`<key>`组合键实现`复制`|
|`z`+`h` / `Backspace`|快速切换是否`显示隐藏文件`|
|📖 **光标快捷键**||
|`h`|返回上级文件夹|
|`l`|进入下级文件夹|
|`j`|当前文件夹向`下`移动光标|
|`k`|当前文件夹向`上`移动光标|
|`shift + j`|光标移动到当前文件夹`底部`|
|`shift + j`|光标移动到当前文件夹`顶部`|
|`[`|父级文件夹向`上`移动光标|
|`]`|父级文件夹向`下`移动光标|
|`shift + h`/`shift + l`|执行上一次操作|
