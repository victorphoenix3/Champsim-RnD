grep @sumon_overall_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark early late useless filled issued requested\n/'|sed -e 's/ /,/g' | sed -e 's/,,/,/g'> ${1}_L1D.csv

grep @sumon_overall_L2C *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark early late useless filled issued requested\n/'|sed -e 's/ /,/g' | sed -e 's/,,/,/g'> ${1}_L2C.csv

# grep @sumon_overall_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.trace.gz[^ ]*//g' |sed -e 's/.champsim.gz[^ ]*//g' | sed -e '1s/^/benchmark early late useless filled issued requested\n/'|sed -e 's/ /,/g' | sed -e 's/,,/,/g'> ${1}_L1D.csv

# grep @sumon_overall_L2C *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.trace.gz[^ ]*//g' |sed -e 's/.champsim.gz[^ ]*//g'| sed -e '1s/^/benchmark early late useless filled issued requested\n/'|sed -e 's/ /,/g' | sed -e 's/,,/,/g'> ${1}_L2C.csv