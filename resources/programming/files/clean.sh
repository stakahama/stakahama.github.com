#!/bin/sh

name=${1-master}
types=( ".aux" ".toc" ".out" ".log" ".bbl" ".blg" ".fls" ".fdb_latexmk" )
# (don't delete the .tex file)

for ext in ${types[@]}
do
    if [ -f ${name}${ext} ];
    then
	rm -fv ${name}${ext}
    fi
done
