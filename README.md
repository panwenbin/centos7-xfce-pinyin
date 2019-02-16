## CentOS7加装Xfce桌面和拼音输入法

### 脚本适用
采用最小安装CentOS7，配置好网络

### 使用方法
- 使用root权限执行脚本，正常情况执行完桌面就准备就绪了
```bash
# curl -fsSL https://raw.githubusercontent.com/panwenbin/centos7-xfce-pinyin/master/centos7-xfce-pinyin.sh | sh
```

### 可能需要的配置
- 改用lightdm后，界面的语言设置要手动选一下，不知道为什么
- 如果输入法没有出来，手动执行im-chooser命令
```
$ im-chooser
```
选择`使用FCITX`

- 自动选中输入法。在/etc/bashrc或者~/.bashrc中加入如下内容，重新登录
```
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
```

- 如果默认面板弄坏了，手动删除当前用户的Xfce配置，然后重启
```
$ rm -r ~/.config/xfce4
```
```
# reboot
```