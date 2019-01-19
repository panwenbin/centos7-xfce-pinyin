#!/bin/bash
yum -y install epel-release
yum -y groupinstall "Xfce" "X Window system"
systemctl set-default graphical.target
yum -y install wqy-microhei-fonts ibus-libpinyin im-chooser
localectl set-locale LANG=zh_CN.UTF8
timedatectl set-timezone Asia/Shanghai
systemctl isolate graphical.target