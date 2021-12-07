grep Finished $1/*core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' |  awk '{print $1","$10}' | rev | cut -d "/" -f 1 | rev | sed -e '1s/^/Benchmarks,IPC\n/'
