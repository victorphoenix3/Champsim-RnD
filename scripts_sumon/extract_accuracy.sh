 grep "L1D USEFUL LOAD PREFETCHES" *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' |awk '{print $1","$13}' | sed -e '1s/^/Benchmarks,Accuracy\n/'