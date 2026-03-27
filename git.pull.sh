#!/bin/bash

# 1. Handle arguments
[[ "${1-"false"}" == "true" ]] && pull_force="-f"

# 2. Check for .gitignore patterns as per your original script
echo "CHECKING IGNORED FILES (wdl/json):"
# Note: Adjusted path to match your specific directory structure
grep -E "(wdl|json)" .gitignore 2>/dev/null || echo "No .gitignore found at specified path."
echo

# 3. Update remotes
git remote update origin --prune
echo

# 4. Perform the standard fetch and pull
current_branch=$(git rev-parse --abbrev-ref HEAD)
git fetch origin "$current_branch"
echo

echo "Performing standard git pull..."
git pull $pull_force origin "$current_branch"
echo

# 5. Git LFS specific logic
if command -v git-lfs >/dev/null 2>&1; then
    echo "Git LFS detected. Syncing large files..."
    # 'git lfs pull' ensures the actual large files are downloaded 
    # for the current checked-out branch.
    git lfs pull origin "$current_branch"
else
    echo "Notice: Git LFS not found. Large files (wdl/json) may remain as pointers."
fi

echo "Done."