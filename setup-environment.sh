# Add deadsnakes repository with Python 3.9
sudo add-apt-repository ppa:deadsnakes/ppa

# Update repositories
sudo apt-get update

# Upgrade packages
sudo apt upgrade - y

# Install Python 3.9
sudo apt install python3.9 -y

# Add Python 3.6 & Python 3.9 to update-alternatives
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 2

# Set python 3.9 as the default version
sudo update-alternatives --set python /usr/bin/python3.9

# Ensure dist-utils is installed for Python3.9
# https://askubuntu.com/questions/1292972/importerror-cannot-import-name-sysconfig-from-distutils-usr-lib-python3-9

sudo apt install python3.9-distutils -y

# Ensure that the creation of virtual environments works
sudo apt install python3.9-venv -y

# Update pip
pip3 install --upgrade pip

# Update setuptools
pip3 install --upgrade setuptools

# Gradle setup

# Install SDKMAN package manager
curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

# Install gradle version 7.5.1
sdk install gradle 7.5.1

# Update npm globally
npm install -g npm@8.19.2

# Install dotnet
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O ~/tmp/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm ~/tmp/packages-microsoft-prod.deb
sudo apt-get install -y dotnet-sdk-6.0
sudo apt-get install -y dotnet-runtime-6.0