#!/bin/bash
yum -y install epel-release
yum -y install lightdm fcitx fcitx-pinyin fcitx-configtool wqy-microhei-fonts im-chooser xfce4-appfinder xfce4-panel xfce4-power-manager xfce4-pulseaudio-plugin xfce4-session xfce4-session-engines xfce4-settings xfce4-terminal xfdesktop thunar thunar-volman
yum -y groupinstall "X Window system"
localectl set-locale LANG=zh_CN.UTF8
timedatectl set-timezone Asia/Shanghai
systemctl set-default graphical.target
systemctl isolate graphical.target