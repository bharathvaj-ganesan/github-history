#!/bin/sh

months=(22 19 04 01)

for m in ${months[@]};
do 
  echo "**$m** - Generated by https://github.com/bharathvaj-ganesan/github-history" > temp.txt
  git add .
  GIT_AUTHOR_DATE="2020-07-$m""T00:00:00" GIT_COMMITTER_DATE="2020-07-$m""T00:00:00" git commit -m "$m"
done

# echo "**$YEAR** - Generated by https://github.com/bharathvaj-ganesan/github-history" > README.md
# git add .
# GIT_AUTHOR_DATE="$YEAR-01-01T18:00:00" GIT_COMMITTER_DATE="$YEAR-01-01T18:00:00" git commit -m "$YEAR"
# cd ..
# rm -rf $REPONAME

# # echo
# echo Tada!!!, you can now check your profile here: https://github.com/$USERNAME