#!/usr/bin/env bash

disable_large_file_test="${1:-false}"
msg=${2-"$(git rev-parse --abbrev-ref HEAD): $(date +'%Y%m%dT%H%M%S')"}

for file in $(find . -type f -name '._*' -print); do echo $file; rm $file; done
for file in $(find . -type f -name '.DS_Store' -print); do echo $file; rm $file; done
for file in $(find . -name '.Rhistory' -print); do echo $file; rm -rf $file; done


eval_cmd="find * -size +5M"
if [[ $disable_large_file_test == false ]] && [[ $(eval $eval_cmd) ]]; then
	echo "### LARGE FILE DETECTED!!! ###";
	echo "### YOU MIGHT WANT TO ADD LARGE FILE(S) AS REPOS SPECIFIC EXCLUSIONS ###"
	echo
	eval "$eval_cmd -print0 | xargs -0 ls -Shal"
	echo
	echo "$eval_cmd | sort -V >> .gitignore; bash $0 true"
	exit 1; 
fi
echo


echo "### ADD THE LATEST CONTENT TO THE REPOS ###"
git status
echo "--- --- --- --- --- ---"
git add --all
echo "--- --- --- --- --- ---"
git status
echo

echo "### ADD A DEFAULT COMMIT WITH TIMESTAMP ###"
git commit -m "$msg"
echo

echo "### IF EVERYTHING GOES WELL, THEN PUSH THE COMMIT ###"
echo "git push origin $(git rev-parse --abbrev-ref HEAD)"
# echo "git push -u origin $(git rev-parse --abbrev-ref HEAD)" # Branch 'CURRENT_BRANCH' set up to track remote branch 'CURRENT_BRANCH' from 'origin'.
echo

echo "### OR, FIX ANY ERRORS AND STARTS AGAIN ###"
echo "git reset HEAD~"
echo


# https://www.atlassian.com/git/tutorials/syncing/git-pull
<<pull_rebase
A rebase pull does not create the new commit.
Instead, the rebase has copied the remote commits and
appended them to the local origin/master commit history.
pull_rebase
echo "### OR, DISTORY THE HISTORY AND HARD PULL FROM THE REMOTE ###"
echo "git pull --rebase"
echo
