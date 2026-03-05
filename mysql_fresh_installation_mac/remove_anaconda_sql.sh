# show what would be removed (review output); then remove
ls -la ~/anaconda3/bin/mysql* ~/anaconda3/bin/mysqld* ~/anaconda3/mysql* 2>/dev/null || true

# Remove Anaconda mysql binaries + support-files used earlier
rm -f ~/anaconda3/bin/mysql* ~/anaconda3/bin/mysqld* 2>/dev/null || true
rm -rf ~/anaconda3/mysql* ~/anaconda3/support-files/mysql* ~/anaconda3/share/mysql* 2>/dev/null || true
