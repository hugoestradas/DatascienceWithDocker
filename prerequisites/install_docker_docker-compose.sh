# intall some prerequisites so apt will have access to use packages through https protocol
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# add the GPC from the offical Docker repo to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# add the Docker repo to the apt sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

# update your packages data-base again, so the Docker packages will (now) be availabel
sudo apt update

# check what's gonna be intalled from the Docker repo
apt-cache policy docker-ce

# now let's intall Docker-ce
sudo apt install docker-ce

#now that Docker is intalled, let's start it!
#sudo systemctl status docker

#use docker without being root
sudo usermod -aG docker datascience

#install docker-compose

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version