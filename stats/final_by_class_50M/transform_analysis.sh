grep @Sumon_early_total_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark stream CS CPLX\n/' > "L1D Early Prefetches.dat"
gnuplot -e "chartitle='L1D Early Prefetches'" plot_analysis.txt

grep @Sumon_late_total_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark stream CS CPLX\n/' > "L1D Late Prefetches.dat"
gnuplot -e "chartitle='L1D Late Prefetches'" plot_analysis.txt

grep @Sumon_early_total_L2C *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark stream CS CPLX\n/' > "L2C Early Prefetches.dat"
gnuplot -e "chartitle='L2C Early Prefetches'" plot_analysis.txt

grep @Sumon_late_total_L2C *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark stream CS CPLX\n/' > "L2C Late Prefetches.dat"
gnuplot -e "chartitle='L2C Late Prefetches'" plot_analysis.txt

grep @Sumon_Early_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark <100 100-250 250-500 500-750 750-1000 1000-2500 2500-5000 5000-10000 10k-20k 20k-50k 50k-100k >100k total\n/'|sed -e 's/ /,/g' | sed -e 's/,,/,g'>out.csv