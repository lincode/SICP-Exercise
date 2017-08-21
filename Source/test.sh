#!/bin/bash
curdir=`dirname $0`
find $curdir -type f -name 'sicp-test-*.scm' |
while read f
do
    echo | mit-scheme --load $f
done
