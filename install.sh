#!/bin/bash

if [ ! -d "~/aria2-1.32.0-linux-gnu-64bit-build1" ]
then
  wget https://github.com/xzl2021/aria2-static-builds-with-128-threads/releases/download/v1.32.0/aria2-1.32.0-linux-gnu-64bit-build1.tar.bz2
  tar jxvf aria2-1.32.0-linux-gnu-64bit-build1.tar.bz2
  mkdir -p /app/OneDrive
  mkdir -p /app/downloads
  wget --no-check-certificate -q -O /app/OneDrive/json-parser "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/json-parser"
  wget --no-check-certificate -q -O /app/OneDrive/onedrive "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive"
  wget --no-check-certificate -q -O /app/OneDrive/onedrive-d "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-d"
  wget --no-check-certificate -q -O /app/OneDrive/onedrive-authorize "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-authorize"
  wget --no-check-certificate -q -O /app/OneDrive/onedrive-base "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-base"
  wget --no-check-certificate -q -O /app/OneDrive/onedrive.cfg "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive.cfg"
  chmod -R a+x /app/OneDrive
  wget --no-check-certificate -q -O /app/OneDrive/.refresh_token "${OD_REFRESH_TOKEN}"
  sed -i "s/api_client_id=\"\"/api_client_id=\"${OD_API_ID}\"/g" /app/OneDrive/onedrive.cfg
  sed -i "s/api_client_secret=\"\"/api_client_secret=\"${OD_API_SECRET}\"/g" /app/OneDrive/onedrive.cfg
  wget https://github.com/rg3/youtube-dl/releases/download/2018.02.11/youtube-dl
  chmod a+x youtube-dl
fi
