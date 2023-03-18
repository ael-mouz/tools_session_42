#!/bin/bash

#install_theme
cd
rm -rf /Users/ael-mouz/.oh-my-zsh/custom/themes/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k > /dev/null 2>&1
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting > /dev/null 2>&1
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions > /dev/null 2>&1
sed -i.bak 's/^plugins=(.*)/plugins=( git zsh-syntax-highlighting zsh-autosuggestions )/' ~/.zshrc
sed -i.bak 's/ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc
echo -e "\x1B[1m\x1B[32minstall theme powerlevel10k✔\x1B[0m"

#c_format
cd
rm -rf c_formatter_42
git clone https://github.com/cacharle/c_formatter_42.git > /dev/null 2>&1
cd c_formatter_42
python3 -m pip install --user -e . > /dev/null 2>&1
echo -e "\x1B[1m\x1B[32minstall c_format ✔\x1B[0m" 

#dracula_color_theme
cd ~/Documents
rm -rf iterm
git clone https://github.com/dracula/iterm.git > /dev/null 2>&1 
# to install  https://draculatheme.com/iterm
# iTerm2 > Preferences > Profiles > Colors Tab
# Open the Color Presets... drop-down in the bottom right corner
# Select Import... from the list
# Select the Dracula.itermcolors file
# Select the Dracula from Color Presets...
echo -e "\x1B[1m\x1B[32minstall dracula color theme ✔\x1B[0m"

#code .
cd
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
echo "alias code=\"/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code\"" >> ~/.bashrc
echo "alias code=\"/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code\"" >> ~/.zshrc
echo -e "\x1B[1m\x1B[32minstall code . ✔\x1B[0m"

#install font 
# cd ~/goinfre
wget -O Fira_Code.zip https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip
mkdir Fira_Code_v6.2
tar -xvf Fira_Code.zip -C Fira_Code_v6.2
# cp Fira_Code_v6.2/ttf/*.ttf ~/Library/Fonts/
wget -O Nerd_Fonts_FiraCode.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip
mkdir FiraCode
tar -xvf Nerd_Fonts_FiraCode.zip -C FiraCode
# cp FiraCode/*.ttf ~/Library/Fonts/
fc-cache -f -v
#Preferences > Profiles > Text > Use ligatures
echo -e "\x1B[1m\x1B[32minstall fira code ✔\x1B[0m"

#brew
# curl -fsSL https://rawgit.com/kube/42homebrew/master/install.sh | zsh > /dev/null 2>&1
# brew update && brew upgrade  
# brew install readline
# brew link readline
# brew tap LouisBrunner/valgrind
# brew install --HEAD LouisBrunner/valgrind/valgrind
# brew upgrade --fetch-HEAD LouisBrunner/valgrind/valgrind

#bleach
cd
rm -rf bleach_42
git clone https://github.com/Ra-Wo/bleach_42.git > /dev/null 2>&1
cd bleach_42
chmod +x install.bash
./install.bash
echo -e "\x1B[1m\x1B[32minstall bleach ✔\x1B[0m"
