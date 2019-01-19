#!/bin/bash
yum -y install epel-release
yum -y groupinstall "X Window system"
yum -y groupinstall "Xfce"
systemctl set-default graphical.target
yum -y install wqy-microhei-fonts ibus-libpinyin im-chooser
localectl set-locale LANG=zh_CN.UTF8
systemctl isolate graphical.target