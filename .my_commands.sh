#!/usr/bin/env bash

function create() {
  cd /Users/boubacar/create-project/ #Replace with path to create-project.js
  source .env
  node create-project.js $1
  cd $DIRECTORY$1
  echo "# $1" >> README.md
  git init
  git add README.md
  git commit -m "first commit"
  git remote add origin https://github.com/$GITHUB_USERNAME/$1.git
  git push -u origin master
  code .
}