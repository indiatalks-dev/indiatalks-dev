#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# place .nojekyll to bypass Jekyll processing
echo > .nojekyll

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git config user.email "jdecode@gmail.com"
git config user.name "Jagdeep Singh"
git init
git checkout -b main
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:indiatalks-dev/indiatalks-dev.github.io.git main
git push -f https://jdecode:${{INDIA_TALKS_DEV_PAGES_DEPLOY_TOKEN}}@github.com/indiatalks-dev/indiatalks-dev.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

cd -
