brew update
brew install mysql@8.4
# link it so 'mysql' resolves to this version
brew unlink mysql 2>/dev/null || true
brew link --force --overwrite mysql@8.4
