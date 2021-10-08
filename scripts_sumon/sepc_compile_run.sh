#single core - no prefetcher
awk '{print "./run_champsim.sh bimodal-no-no-no-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/low_bw_analysis/normal-nopref &"}' spec_trace_list.txt > spec_run_nopref.sh
#single core - normal case
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/low_bw_analysis/normal &"}' spec_trace_list.txt > spec_run.sh
#single core - DIV4
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV4-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/low_bw_analysis/DIV4 &"}' spec_trace_list.txt > spec_run_DIV4.sh
#single core - DIV8
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV8-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/low_bw_analysis/DIV8 &"}' spec_trace_list.txt > spec_run_DIV8.sh
#single core - DIV12
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV12-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/low_bw_analysis/DIV12 &"}' spec_trace_list.txt > spec_run_DIV12.sh
#single core - DIV16
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV16-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/low_bw_analysis/DIV16 &"}' spec_trace_list.txt > spec_run_DIV16.sh
#single core - DIV32
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV32-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/low_bw_analysis/DIV32 &"}' spec_trace_list.txt > spec_run_DIV32.sh