# remove Homebrew Cellar mysql directories
sudo rm -rf /opt/homebrew/Cellar/mysql* /opt/homebrew/Cellar/mysql@* || true

# remove Homebrew opt links
sudo rm -rf /opt/homebrew/opt/mysql* || true
sudo rm -rf /opt/homebrew/var/homebrew/linked/mysql* || true

# remove Homebrew mysql data directory (THIS DELETES YOUR DATABASES)
sudo rm -rf /opt/homebrew/var/mysql || true

# remove logs and pid files if present
sudo rm -f /tmp/mysql.sock /tmp/mysql.sock.lock /opt/homebrew/var/mysql/*.pid 2>/dev/null || true

# remove global plist files installed by Homebrew
rm -f ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist 2>/dev/null || true
sudo rm -f /Library/LaunchDaemons/homebrew.mxcl.mysql.plist 2>/dev/null || true

# cleanup any leftover linked binaries
sudo rm -f /opt/homebrew/bin/mysql* /opt/homebrew/sbin/mysqld* 2>/dev/null || true
sudo rm -f /usr/local/bin/mysql* 2>/dev/null || true
