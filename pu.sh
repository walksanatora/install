#! /usr/bin/env bash

git add -A
read nfo
git commit -m "$nfo"
git push
read

#run git config --global credential.helper cache before to avoid loging in
