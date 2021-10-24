#single core - no prefetcher
awk '{print "./run_champsim.sh bimodal-no-no-no-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/spp/normal-nopref &"}' spec_trace_list.txt > spec_run_spp_nopref.sh
#single core - normal case
awk '{print "./run_champsim.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/spp/normal &"}' spec_trace_list.txt > spec_run_spp.sh
#single core - DIV4
awk '{print "./run_champsim.sh bimodal-no-no_DRAMIOFREQDIV4-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/spp/DIV4 &"}' spec_trace_list.txt > spec_run_spp_DIV4.sh
#single core - DIV8
awk '{print "./run_champsim.sh bimodal-no-no_DRAMIOFREQDIV8-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/spp/DIV8 &"}' spec_trace_list.txt > spec_run_spp_DIV8.sh
#single core - DIV12
awk '{print "./run_champsim.sh bimodal-no-no_DRAMIOFREQDIV12-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/spp/DIV12 &"}' spec_trace_list.txt > spec_run_spp_DIV12.sh
#single core - DIV16
awk '{print "./run_champsim.sh bimodal-no-no_DRAMIOFREQDIV16-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/spp/DIV16 &"}' spec_trace_list.txt > spec_run_spp_DIV16.sh
#single core - DIV32
awk '{print "./run_champsim.sh bimodal-no-no_DRAMIOFREQDIV32-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 10 50 traces/SPEC2017 " $1 " stats/spp/DIV32 &"}' spec_trace_list.txt > spec_run_spp_DIV32.sh