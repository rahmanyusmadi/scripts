# REFERENCE: https://docs.docker.com/install/linux/docker-ce/debian/#install-using-the-repository
# QUICKRUN:  curl https://raw.githubusercontent.com/yusmadi/scripts/master/setup-docker.sh | bash

sudo apt-get update
sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg2 \
  software-properties-common

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/debian \
  $(lsb_release -cs) \
  stable"
  
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker $USER

sudo systemctl restart docker
