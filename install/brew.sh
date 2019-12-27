#!/bin/bash

packages=(
  fd
  tmux
  ripgrep
  yarn
  zsh
  pipenv
  htop
  bat
  allure
  autojump
  ffmpeg
  go
  ideviceinstaller
  ios-webkit-debug-proxy
  iproute2mac
  jpeg
  k6
  jq
  kafka
  mkcert
  mongodb
  neovim
  nginx
  openssl
  python
  redis
  telnet
  wget
)

brew install "${packages[@]}"
