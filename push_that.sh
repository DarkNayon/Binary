#!/bin/bash
if [ $# = 1 ]
then 
    git add --all
    git commit -m "$1"
    git push origin master
else 
     echo "Erreur"
fi
