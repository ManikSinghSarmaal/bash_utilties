# remove user & system my.cnf files and mysql history
rm -f ~/.my.cnf ~/.mysql_history /etc/my.cnf /etc/mysql/my.cnf /etc/my.cnf.d/* 2>/dev/null || true

# remove any leftover mysql dirs
sudo rm -rf /usr/local/var/mysql 2>/dev/null || true
sudo rm -rf /etc/mysql 2>/dev/null || true
rm -rf ~/.mysql 2>/dev/null || true
