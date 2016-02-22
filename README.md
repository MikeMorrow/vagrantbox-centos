# vagrantboxes
Modified versions of CentOS 7.1 from https://github.com/shiguredo/packer-templates.git
Personalized version of Debian from https://github.com/boxcutter/debian.git

## Centos-7.2
Base updated version of CentOS 7.2.  
template.json include reference to iso:
```
http://bay.uchicago.edu/centos/7.2.1511/isos/x86_64/CentOS-7-x86_64-DVD-1511.iso
```
If this no longer exists, you'll want to update.

## Centos-7.2-nagios
This is based on Centos-7.2 but includes installation of apache, mariadb, nagios, and nagios-plugins.
