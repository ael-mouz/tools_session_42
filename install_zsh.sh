#!/bin/bash

#install_oh_my_zsh
rm -rf /Users/ael-mouz/.oh-my-zsh
rm -rf /Users/ael-mouz/.zshrc
rm -rf .zshrc.pre-oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"  > /dev/null 2>&1