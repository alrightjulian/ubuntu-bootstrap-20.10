# Update & Upgrade
read -p "Update & Upgrade? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt update
    sudo apt upgrade
fi

# Git and Setup
read -p "Github Installation & Setup [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "hello?"
    sudo apt install git
    echo "Enter email address for git"
    read GIT_EMAIL
    echo "Enter name for git"
    read GIT_NAME
    git config --global user.email $GIT_EMAIL
    git config --global user.name $GIT_NAME
fi

# Zsh and Setup
read -p "Zsh Installation & Setup [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt install curl
    sudo apt install zsh
    sudo apt-get install powerline fonts-powerline
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
    read -p "Edit ZSH config? (Add zsh-autosuggestions and zsh-syntax-highlighting under plugins) [y/n]" -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        nano ~/.zshrc
    fi
fi

read -p "Restart? [y/n] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo reboot
fi