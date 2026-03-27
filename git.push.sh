#!/bin/bash

# 1. Set the commit message
msg=${1-"$(git rev-parse --abbrev-ref HEAD): $(date +'%Y%m%dT%H%M%S')"}
echo "Commit message: $msg"
[[ "${2-"false"}" == "true" ]] && push_force="-f"

echo "SKIPPING FILES FROM .gitignore"
# [[ $(ls *.json 2> /dev/null) ]] && rm *.json
# [[ $(ls *.wdl 2> /dev/null) ]] && rm *.wdl
grep -E "(wdl|json)" .gitignore 2>/dev/null || echo "No .gitignore found at specified path."
echo

if command -v git-lfs >/dev/null 2>&1; then
	echo "Git LFS detected. Configuring tracking..."
	# 2. Initialize LFS (if not already done in this repo)
	git lfs install --local --quiet

	# 3. Track specific patterns with LFS 
	# This ensures these types are handled by LFS even if not yet in .gitattributes
	git lfs track "*.joblib" "*.hdf5" "*.zip"

	# 4. Add the .gitattributes file (where LFS tracks its settings) 
	# plus all other changes
	git add .gitattributes
else
	echo "Git LFS not found. Proceeding with regular commit..."
fi

git add --all

# 5. Commit and Push
git commit -m "$msg"
git push $push_force origin $(git rev-parse --abbrev-ref HEAD)
