grep @Sumon_Late_by_cycle_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark <10 10-25 25-50 50-100 100-500 >500\n/' | sed -e 's/ /,/g' | sed -e 's/,,/,/g'