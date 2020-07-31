# Vagrant Centos Default

This project aims to install with Vagrant CentOS VMs. It uses _**Virtualbox**_ provider.

## Composition
The project is set with :
  - one Vagrantfile for the global definition of the CentOS VM (with version 7)
  - one shell script in order to install all softwares

## Setup & Installation
### VM customization
It is necessary to configure the vagrant file for :
- defining the VM name,
- defining the port forwarded,
- defining the VM characteristics

### Setup with MobaXterm
Don't forget to attached the right **_"private_key"_** into MobaXterm session for enabling ssh connection.