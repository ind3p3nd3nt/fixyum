#!/bin/bash
wget python-iniparse-0.4-9.el7.noarch.rpm
wget yum-metadata-parser-1.1.4-10.el7.x86_64.rpm
wget yum-3.4.3-158.el7.centos.noarch.rpm
wget yum-plugin-fastestmirror-1.1.31-45.el7.noarch.rpm
rpm -ivh *.rpm
yum update
