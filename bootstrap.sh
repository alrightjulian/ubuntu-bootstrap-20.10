
# Install Git and Setup
echo "hello?"
sudo apt install git
echo "Enter email address for git"
read GIT_EMAIL
echo "Enter name for git"
read GIT_NAME
git config --global user.email $GIT_EMAIL
git config --global user.name $GIT_NAME