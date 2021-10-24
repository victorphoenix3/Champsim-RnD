#single core - normal case
awk '{print "./run_champsim.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/spp/cs/normal &"}' clientserver_trace_list.txt > clientserver_run_spp.sh
#single core - DIV4
awk '{print "./run_champsim.sh bimodal-no-no_DRAMIOFREQDIV4-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/spp/cs/DIV4 &"}' clientserver_trace_list.txt > clientserver_run_spp_DIV4.sh
#single core - DIV8
awk '{print "./run_champsim.sh bimodal-no-no_DRAMIOFREQDIV8-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/spp/cs/DIV8 &"}' clientserver_trace_list.txt > clientserver_run_spp_DIV8.sh
#single core - DIV12
awk '{print "./run_champsim.sh bimodal-no-no_DRAMIOFREQDIV12-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/spp/cs/DIV12 &"}' clientserver_trace_list.txt > clientserver_run_spp_DIV12.sh
#single core - DIV16
awk '{print "./run_champsim.sh bimodal-no-no_DRAMIOFREQDIV16-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/spp/cs/DIV16 &"}' clientserver_trace_list.txt > clientserver_run_spp_DIV16.sh
#single core - DIV32
awk '{print "./run_champsim.sh bimodal-no-no_DRAMIOFREQDIV32-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/clientserver " $1 " stats/spp/cs/DIV32 &"}' clientserver_trace_list.txt > clientserver_run_spp_DIV32.sh
