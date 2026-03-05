# stop Homebrew service (if any)
brew services stop mysql || true
brew services stop mysql@8.4 || true
brew services stop mysql@* 2>/dev/null || true

# stop any stray mysqld processes
pkill mysqld || true
pkill -f mysql || true

# remove any per-user LaunchAgents entries (safe even if missing)
launchctl bootout gui/$(id -u) ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist 2>/dev/null || true
sudo launchctl bootout system /Library/LaunchDaemons/homebrew.mxcl.mysql.plist 2>/dev/null || true
