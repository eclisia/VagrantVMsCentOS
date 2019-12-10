#First update of CentOS
sudo yum update

#Installation of first tool
sudo yum install -y tree vim elinks httpd
#Install of VirtualBox additionnal tool
sudo yum install linux-headers-$(uname -r) build-essential dkms

# Start Apache2
sudo systemctl enable httpd
sudo systemctl start httpd