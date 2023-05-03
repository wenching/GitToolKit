echo "### LIST OF REMOTES FOR A GIT REPOS ###"
git remote -v
echo

echo "### UPDATE LOCAL LIST OF REMOTE BRANCES ###"
git remote update origin --prune
echo

echo "### FETCH REMOTE CHANGES ###"
git fetch origin
echo

echo "### PULL (=fetch + merge) REMOTE CHANGES ###"
git pull origin
echo
