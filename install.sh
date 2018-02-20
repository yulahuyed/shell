#!/bin/bash

if [ ! -d "~/aria2-1.32.0-linux-gnu-64bit-build1" ]
then
  cd ~
  wget https://github.com/xzl2021/aria2-static-builds-with-128-threads/releases/download/v1.32.0/aria2-1.32.0-linux-gnu-64bit-build1.tar.bz2
  tar jxvf aria2-1.32.0-linux-gnu-64bit-build1.tar.bz2
fi
