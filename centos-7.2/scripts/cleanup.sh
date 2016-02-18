yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y update
yum -y clean all
systemctl disable firewalld
rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/rubygems-*

