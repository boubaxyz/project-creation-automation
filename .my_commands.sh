#!/usr/bin/env bash

function create() {
  node /Users/boubacar/create-project/create-project.js $1 #Replace with path to create-project.js
  cd /Users/boubacar/Desktop/Projects/$1 #Replace with path to your projects directory
  echo "# $1" >> README.md
  git init
  git add README.md
  git commit -m "first commit"
  git remote add origin https://github.com/boobadiallo/$1.git #Replace my Github username with yours
  git push -u origin master
  code .
}