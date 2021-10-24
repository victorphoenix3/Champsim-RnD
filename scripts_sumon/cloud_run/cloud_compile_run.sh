#single core - normal case
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/cloud " $1 " stats/low_bw_analysis/cloud/normal &"}' cloud_trace_list.txt > cloud_run.sh
#single core - DIV4
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV4-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/cloud " $1 " stats/low_bw_analysis/cloud/DIV4 &"}' cloud_trace_list.txt > cloud_run_DIV4.sh
#single core - DIV8
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV8-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/cloud " $1 " stats/low_bw_analysis/cloud/DIV8 &"}' cloud_trace_list.txt > cloud_run_DIV8.sh
#single core - DIV12
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV12-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/cloud " $1 " stats/low_bw_analysis/cloud/DIV12 &"}' cloud_trace_list.txt > cloud_run_DIV12.sh
#single core - DIV16
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV16-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/cloud " $1 " stats/low_bw_analysis/cloud/DIV16 &"}' cloud_trace_list.txt > cloud_run_DIV16.sh
#single core - DIV32
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV32-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/cloud " $1 " stats/low_bw_analysis/cloud/DIV32 &"}' cloud_trace_list.txt > cloud_run_DIV32.sh
