cd
sudo apt update || { echo "update failed" ; exit 1; } >> error.txt
sudo apt upgrade -y || { echo "upgrade failed" ; exit 1; } >> error.txt
sudo apt install wget || { echo "dist upgrade failed" ; exit 1; } >> error.txt
sudo apt install wget || { echo "dist upgrade failed" ; exit 1; } >> error.txt
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb || { echo "failed" ; exit 1; } >> error.txt
sudo dpkg -i google-chrome-stable_current_amd64.deb || { echo "failed" ; exit 1; } >> error.txt

sudo apt update || { echo "update failed" ; exit 1; } >> error.txt
sudo apt -y install wget || { echo "failed" ; exit 1; } >> error.txt

sudo apt update || { echo "update failed" ; exit 1; } >> error.txt
sudo apt install apt-transport-https || { echo "failed" ; exit 1; } >> error.txt
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg || { echo "failed" ; exit 1; } >> error.txt
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/ || { echo "failed" ; exit 1; } >> error.txt


sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable $ main" > /etc/apt/sources.list.d/vscode.list' || { echo "failed" ; exit 1; } >> error.txt

sudo apt update || { echo "update failed" ; exit 1; } >> error.txt
sudo apt install code || { echo "failed" ; exit 1; } >> error.txt

sudo apt install git-all || { echo "failed" ; exit 1; } >> error.txt

git --version >> check.txt || { echo "failed" ; exit 1; } >> error.txt
git config --global user.email "ingecarlos.gutierrez@gmail.com" || { echo "failed" ; exit 1; } >> error.txt
ssh-keygen -t rsa -b 4096 -C "ingecarlos.gutierrez@gmail.com" || { echo "failed" ; exit 1; } >> error.txt

eval $(ssh-agent) >> check.txt || { echo "failed" ; exit 1; } >> error.txt
ssh-add ~/.ssh/id_rsa || { echo "failed" ; exit 1; } >> error.txt

sudo apt update || { echo "update failed" ; exit 1; } >> error.txt
sudo apt install nodejs || { echo "failed" ; exit 1; } >> error.txt
node --version >> check.txt || { echo "failed" ; exit 1; } >> error.txt

sudo apt install npm || { echo "failed" ; exit 1; } >> error.txt
npm --version >> check.txt|| { echo "failed" ; exit 1; } >> error.txt

cd ~ || { echo "failed" ; exit 1; } >> error.txt
curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.s || { echo "failed" ; exit 1; } >> error.txt
sudo apt install nodejs || { echo "failed" ; exit 1; } >> error.txt

sudo apt-get install zsh || { echo "failed" ; exit 1; } >> error.txt
sudo apt-get install git-core || { echo "failed" ; exit 1; } >> error.txt
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || { echo "failed" ; exit 1; } >> error.txt
chsh -s `which zsh` || { echo "failed" ; exit 1; } >> error.txt

sudo add-apt-repository ppa:neovim-ppa/unstable || { echo "failed" ; exit 1; } >> error.txt
sudo apt update || { echo "update failed" ; exit 1; } >> error.txt

sudo apt-get install neovim || { echo "failed" ; exit 1; } >> error.txt
nvim >> check.txt || { echo "failed" ; exit 1; } >> error.txt
sudo apt install xclip || { echo "failed" ; exit 1; } >> error.txt
sudo apt install xsel || { echo "failed" ; exit 1; } >> error.txt

sudo apt install python3-pip || { echo "failed" ; exit 1; } >> error.txt
python3 -m pip install neovim || { echo "failed" ; exit 1; } >> error.txt
python3 -m pip install --upgrade neovim || { echo "failed" ; exit 1; } >> error.txt

sudo apt install ruby || { echo "failed" ; exit 1; } >> error.txt
sudo apt install ruby-dev || { echo "failed" ; exit 1; } >> error.txt

sudo gem install neovim || { echo "failed" ; exit 1; } >> error.txt
#nvim +checkhealth

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


git clone https://github.com/hut/ranger.git
cd ranger
sudo make install
ranger --copy-config=all

cd
sudo apt install terminator

sudo apt update || { echo "update failed" ; exit 1; } >> error.txt
sudo apt upgrade -y || { echo "upgrade failed" ; exit 1; } >> error.txt
sudo apt-get install chrome-gnome-shell

sudo snap install postman

wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -

echo "deb https://dbeaver.io/debs/dbeaver-ce /" \
| sudo tee /etc/apt/sources.list.d/dbeaver.list

sudo apt update || { echo "update failed" ; exit 1; } >> error.txt
sudo apt install dbeaver-ce || { echo "failed" ; exit 1; } >> error.txt

cd ~/.config/ranger
git clone https://github.com/ranger/colorschemes.git

cd

git@github.com:CarGDev/Vim-configuration.git || { echo "failed" ; exit 1; } >> error.txt
cd Vim-configuration

cp -r ./.zshrc ../
cp -r ./update.sh ../
cp -r ./clean.sh ../

cd
mkdir .vim || { echo "failed" ; exit 1; } >> error.txt
cp -r ./Vim-configuration/.vim ./vim
cp -r ./Vim-configuration/.config/nvim/ ./.config/nvim
cp -r ./Vim-configuration/.config/ranger/ ./.config/ranger

echo End

