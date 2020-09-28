#! /usr/bin/env bash

git add -A
read nfo
git config --global credential.helper store
git commit -m "$nfo"
git push
echo "done"
read

#run "git config --global credential.helper cache" before to avoid loging in
