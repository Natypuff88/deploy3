#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
#git init
git add -A
git commit -m 'deploy'

# si los cambios se suben a https://<USERNAME>.github.io/ ejecutar lo siguiente

git push -f https://github.com/Natypuff88/deploytres.git main:gh-pages 

cd -