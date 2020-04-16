#!/bin/bash

set -euo pipefail

cd "$(dirname "$0")";

for repo in $(grep github.com/bogdan2412/ .gitmodules | \
              sed 's/\.git$//' | \
              sed 's/.*github.com\/bogdan2412\///'); do
    cd ${repo};
    git checkout master;
    git remote set-url origin git@github.com:bogdan2412/${repo}.git;
    git fetch;
    git reset --hard origin/master;
    upstream="janestreet"
    if [[ "${repo}" == "ocamlformat" ]]; then
        upstream="ocaml-ppx"
    fi
    git pull --rebase https://github.com/${upstream}/${repo}.git;
    TAG=patch-$(git rev-parse FETCH_HEAD);
    if git rev-parse "$TAG" >/dev/null 2>&1; then
        echo "Already rebased";
    else
        git tag $TAG;
        git push --force --set-upstream origin master;
        git push origin $TAG;
    fi;
    cd ${OLDPWD};
done
