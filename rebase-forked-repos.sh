#!/bin/bash

set -euo pipefail

for repo in core; do
    cd ${repo}; 
    git pull --rebase https://github.com/janestreet/${repo}.git;
    cd ${OLDPWD};
done
