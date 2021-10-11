#single core - normal case
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/graph " $1 " stats/eliminate_late/graph/normal &"}' graph_trace_list.txt > graph_run.sh
#single core - DIV4
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV4-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/graph " $1 " stats/eliminate_late/graph/DIV4 &"}' graph_trace_list.txt > graph_run_DIV4.sh
#single core - DIV8
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV8-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/graph " $1 " stats/eliminate_late/graph/DIV8 &"}' graph_trace_list.txt > graph_run_DIV8.sh
#single core - DIV12
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV12-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/graph " $1 " stats/eliminate_late/graph/DIV12 &"}' graph_trace_list.txt > graph_run_DIV12.sh
#single core - DIV16
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV16-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/graph " $1 " stats/eliminate_late/graph/DIV16 &"}' graph_trace_list.txt > graph_run_DIV16.sh
#single core - DIV32
awk '{print "./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV32-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/graph " $1 " stats/eliminate_late/graph/DIV32 &"}' graph_trace_list.txt > graph_run_DIV32.sh
