#!/usr/bin/env sh

# abort on errors
set -e

# place .nojekyll to bypass Jekyll processing
echo > .nojekyll

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git config user.email "jdecode@gmail.com"
git config user.username "jdecode"
git config user.name "Jagdeep Singh"
git remote -v
git statuss
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
#git push -f git@github.com:indiatalks-dev/indiatalks-dev.github.io.git main
git push -f https://jdecode:${{INDIA_TALKS_DEV_PAGES_DEPLOY_TOKEN}}@github.com/indiatalks-dev/indiatalks-dev.git main:gh-pages

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -
