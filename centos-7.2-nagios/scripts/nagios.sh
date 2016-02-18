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
echo -e "\n\nvagrant\nvagrant\n\n\nn\n\n " | mysql_secure_installation 2>/dev/null
# ---------------------------------------------------------------------------
# Install php
# ---------------------------------------------------------------------------
yum install php php-mysql php-gd php-pear -y
# ---------------------------------------------------------------------------
# Install nagios
# ---------------------------------------------------------------------------
yum install nagios -y
echo "vagrant" | htpasswd -i /etc/nagios/passwd nagiosadmin
# ---------------------------------------------------------------------------
# Install base plugins
# ---------------------------------------------------------------------------
yum install nagios-plugins -y
