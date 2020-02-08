#!/bin/bash
sudo apt update
#emacs
sudo apt install emacs -y
#vscode
sudo apt install curl -y
curl -L https://github.com/toolboc/vscode/releases/download/1.32.3/code-oss_1.32.3-arm64.deb -o code-oss_1.32.3-arm64.deb
sudo dpkg -i code-oss_1.32.3-arm64.deb
rm -fr code-oss_1.32.3-arm64.deb
