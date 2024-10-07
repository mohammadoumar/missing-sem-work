#!/home/umermushtaq/anaconda3/bin/bash

. random_test.sh

run_script () {

status=$?

if [[ status -eq 0 ]]; then
	echo "run $n succeeded, proceeding to next run ..."
	n+=1
	. run_random_tst.sh
else
	echo "Magic error detected at run nr: $n"
fi
}

run_script "$1"
