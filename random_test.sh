#!/home/umermushtaq/anaconda3/bin/bash

run=1

run_experiment () {


n=$(( RANDOM % 100 ))
echo "n = $n"
 if [[ n -eq 42 ]]; then
   exit=1
 else
   exit=0
 fi

}

run_loop () {
run_experiment
status=exit
run=$((run+1))
if [[ status -eq 0 ]]; then
	echo "run nr $run succeeded, proceeding to next run .... "
	run_loop
else
	echo "magic number detected after $run runs"

fi

}

run_loop
