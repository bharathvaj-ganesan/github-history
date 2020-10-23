#!/bin/sh

read -p "Github Repository name: " REPONAME
read -p "Year to which u want to travel and commit: " YEAR
read -p "Github Username: " USERNAME

if [ -z "$USERNAME" ]
then
  exit 1
fi

mkdir $REPONAME
cd $REPONAME
git init
echo "**$YEAR** - Generated by https://github.com/bharathvaj-ganesan/github-history" > README.md
git add .
GIT_AUTHOR_DATE="$YEAR-01-01T18:00:00" GIT_COMMITTER_DATE="$YEAR-01-01T18:00:00" git commit -m "$YEAR"
git remote add origin https://github.com/$USERNAME/$REPONAME.git
git push -u origin master -f
cd ..
rm -rf $REPONAME

# echo
echo Tada!!!, you can now check your profile here: https://github.com/$USERNAME