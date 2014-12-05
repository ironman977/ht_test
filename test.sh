#!/bin/bash

if [[ -z $1 ]] ; then
	echo "Usage : $0 njobs"
	exit 1
fi
JOBS=$1
(for n in `seq 1 $JOBS`; do ./sincos.pl $n & done) | ./sumsincon.pl 
