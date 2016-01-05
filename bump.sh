#!/bin/bash
if [ $# -eq 1 ]
then
  version="$1"
  echo "Bumping to version $version..."
  npm version $version
  git push --follow-tags
  exit 0
else
 echo "No version number given!"
 exit 1
fi

