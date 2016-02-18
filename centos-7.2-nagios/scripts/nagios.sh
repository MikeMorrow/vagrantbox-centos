yum install --nogpgcheck -y -q https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install httpd -y
systemctl start httpd
systemctl enable httpd
# ---------------------------------------------------------------------------
# Install mariadb
# ---------------------------------------------------------------------------
yum install mariadb-server mariadb -y
systemctl start mariadb
systemctl enable mariadb
echo -e "\n\nsecret\nsecret\n\n\nn\n\n " | mysql_secure_installation 2>/dev/null
# ---------------------------------------------------------------------------
# Install php
# ---------------------------------------------------------------------------
yum install php php-mysql php-gd php-pear -y
cp /vagrant/conf/info.php /var/www/html/info.php
systemctl restart httpd
# ---------------------------------------------------------------------------
# Install nagios
# ---------------------------------------------------------------------------
yum install nagios -y
yum install --nogpgcheck -y https://mathias-kettner.de/support/1.2.6p16/check-mk-raw-1.2.6p16-el7-34.x86_64.rpm
# ---------------------------------------------------------------------------
# Install base plugins
# ---------------------------------------------------------------------------
yum install nagios-plugins -y
