#single core - normal case
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/eliminate_late/cs/normal &"}' clientserver_trace_list.txt > clientserver_run.sh
#single core - DIV4
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV4-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/eliminate_late/cs/DIV4 &"}' clientserver_trace_list.txt > clientserver_run_DIV4.sh
#single core - DIV8
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV8-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/eliminate_late/cs/DIV8 &"}' clientserver_trace_list.txt > clientserver_run_DIV8.sh
#single core - DIV12
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV12-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/eliminate_late/cs/DIV12 &"}' clientserver_trace_list.txt > clientserver_run_DIV12.sh
#single core - DIV16
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV16-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/eliminate_late/cs/DIV16 &"}' clientserver_trace_list.txt > clientserver_run_DIV16.sh
#single core - DIV32
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV32-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/eliminate_late/cs/DIV32 &"}' clientserver_trace_list.txt > clientserver_run_DIV32.sh