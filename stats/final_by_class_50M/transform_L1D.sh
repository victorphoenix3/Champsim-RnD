grep @Sumon_Early_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark <100 100-250 250-500 500-750 750-1000 1000-2500 2500-5000 5000-10000 10k-20k 20k-50k 50k-100k >100k\n/' > "L1D Early Prefetches.dat"
gnuplot -e "chartitle='L1D Early Prefetches'" plot.txt

grep @Sumon_Late_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark <100 100-250 250-500 500-750 750-1000 1000-2500 2500-5000 5000-10000 10k-20k 20k-50k 50k-100k >100k\n/' > "L1D Late Prefetches.dat"
gnuplot -e "chartitle='L1D Late Prefetches'" plot.txt

grep @Sumon_Early_stream_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark <100 100-250 250-500 500-750 750-1000 1000-2500 2500-5000 5000-10000 10k-20k 20k-50k 50k-100k >100k\n/' > "L1D Early Prefetches Stream class.dat"
gnuplot -e "chartitle='L1D Early Prefetches Stream class'" plot.txt

grep @Sumon_Early_CS_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark <100 100-250 250-500 500-750 750-1000 1000-2500 2500-5000 5000-10000 10k-20k 20k-50k 50k-100k >100k\n/' > "L1D Early Prefetches CS class.dat"
gnuplot -e "chartitle='L1D Early Prefetches CS class'" plot.txt

grep @Sumon_Early_CPLX_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark <100 100-250 250-500 500-750 750-1000 1000-2500 2500-5000 5000-10000 10k-20k 20k-50k 50k-100k >100k\n/' > "L1D Early Prefetches CPLX class.dat"
gnuplot -e "chartitle='L1D Early Prefetches CPLX class'" plot.txt

grep @Sumon_Late_stream_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark <100 100-250 250-500 500-750 750-1000 1000-2500 2500-5000 5000-10000 10k-20k 20k-50k 50k-100k >100k\n/' > "L1D Late Prefetches Stream class.dat"
gnuplot -e "chartitle='L1D Late Prefetches Stream class'" plot.txt

grep @Sumon_Late_CS_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark <100 100-250 250-500 500-750 750-1000 1000-2500 2500-5000 5000-10000 10k-20k 20k-50k 50k-100k >100k\n/' > "L1D Late Prefetches CS class.dat"
gnuplot -e "chartitle='L1D Late Prefetches CS class'" plot.txt

grep @Sumon_Late_CPLX_L1D *core.txt | awk -F ":" '{print $1 " " $2}' | awk '{$2="";print $0}'| sed -e 's/.champsimtrace.xz-bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core.txt//g' | sed -e '1s/^/benchmark <100 100-250 250-500 500-750 750-1000 1000-2500 2500-5000 5000-10000 10k-20k 20k-50k 50k-100k >100k\n/' > "L1D Late Prefetches CPLX class.dat"
gnuplot -e "chartitle='L1D Late Prefetches CPLX class'" plot.txt
