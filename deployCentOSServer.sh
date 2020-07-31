#First update of CentOS
sudo yum update

#Installation of first tool
sudo yum install -y tree vim elinks httpd
#Install of VirtualBox additionnal tool
sudo yum install -y linux-headers-$(uname -r) build-essential dkms

# Start Apache2
#sudo systemctl enable httpd
#sudo systemctl start httpd

# Install GUI interface
# sudo yum install -y xorg-x11-server-Xorg xorg-x11-xauth xorg-x11-app
# sudo systemctl restart sshd

#Install last git version
#Information from : https://computingforgeeks.com/how-to-install-latest-version-of-git-git-2-x-on-centos-7/
sudo yum remove git*
sudo yum -y install https://packages.endpoint.com/rhel/7/os/x86_64/endpoint-repo-1.7-1.x86_64.rpm
sudo yum -y install git



# Install Visual Studio CODE
# Source : https://code.visualstudio.com/docs/setup/linux
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
yum check-update
sudo yum install -y code


#Install Docker
# Source from official documentation of Docker
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
#Post Docker installation :  https://docs.docker.com/engine/install/linux-postinstall/
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 

#Update all package
yum -y upgrade
