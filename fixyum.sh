#!/bin/bash
wget http://mirrors.163.com/centos/7/os/x86_64/Packages/python-iniparse-0.4-9.el7.noarch.rpm
wget http://mirrors.163.com/centos/7/os/x86_64/Packages/yum-metadata-parser-1.1.4-10.el7.x86_64.rpm
wget http://mirrors.163.com/centos/7/os/x86_64/Packages/yum-3.4.3-158.el7.centos.noarch.rpm
wget http://mirrors.163.com/centos/7/os/x86_64/Packages/yum-plugin-fastestmirror-1.1.31-45.el7.noarch.rpm
wget http://ftp.vim.org/ftp/gnu/glibc/glibc-2.14.tar.gz
tar xvf glibc-2.14.tar.gz
rpm -ivh *.rpm
cd glibc-2.14
mkdir -p build
cd build
.././configure --prefix '/usr'
make -j8
make install
yum update
