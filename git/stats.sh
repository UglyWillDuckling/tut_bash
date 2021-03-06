#!/bin/bash


git rev-list --reverse HEAD |
  while read rev; do
    echo;
    echo REV $rev;
    git ls-tree -r $rev |
    awk '{print $3}' |
    xargs git show |
    wc -l;
done


function commmit_description {
  git log --oneline -1 $rev
}
