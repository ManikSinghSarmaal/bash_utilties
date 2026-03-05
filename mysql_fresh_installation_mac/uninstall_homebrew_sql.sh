brew update

# uninstall common mysql formulas (will harmlessly error if not installed)
brew uninstall --force mysql mysql@9 mysql@8.4 mysql@8.0 mysql@5.7 2>/dev/null || true

# check installed mysql-related formulae just in case
brew list | grep -E '^mysql' || true
