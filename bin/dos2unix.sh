#!/bin/bash

TMP=/tmp/dos2unix

for dir in $@
do
	for f in $dir/*.txt $dir/*.c $dir/*.h $dir/*.mk
	do
		echo "Processing $f"
		tr -d '\015' <$f > $TMP
		cp $TMP $f
	done
done
