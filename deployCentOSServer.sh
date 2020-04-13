#First update of CentOS
sudo yum update

#Installation of first tool
sudo yum install -y tree vim elinks httpd
#Install of VirtualBox additionnal tool
sudo yum install linux-headers-$(uname -r) build-essential dkms

# Start Apache2
sudo systemctl enable httpd
sudo systemctl start httpd

# Install GUI interface
sudo yum install -y xorg-x11-server-Xorg xorg-x11-xauth xorg-x11-app
sudo systemctl restart sshd

# Install Visual Studio CODE
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.micros
oft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/m
icrosoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo yum check-update
sudo yum install code