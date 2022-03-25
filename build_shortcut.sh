# no prefetcher
./build_champsim.sh bimodal no no no no no no no lru lru lru drrip lru lru lru lru 1

# ipcp with varrying llc repl policies
./build_champsim.sh bimodal no ipcp_isca2020 ipcp_isca2020 no no no no lru lru lru drrip lru lru lru lru 1
./build_champsim.sh bimodal no ipcp_isca2020 ipcp_isca2020 no no no no lru lru lru drrip drrip lru lru lru 1
./build_champsim.sh bimodal no ipcp_isca2020 ipcp_isca2020 no no no no lru lru lru drrip hawkeye lru lru lru 1 
./build_champsim.sh bimodal no ipcp_isca2020 ipcp_isca2020 no no no no lru lru lru drrip ship++ lru lru lru 1 
./build_champsim.sh bimodal no ipcp_isca2020 ipcp_isca2020 no no no no lru lru lru drrip mockingjay lru lru lru 1

# bingo with varrying llc repl policies
./build_champsim.sh bimodal no no bingo_dpc3 no no no no lru lru lru drrip lru lru lru lru 1
./build_champsim.sh bimodal no no bingo_dpc3 no no no no lru lru lru drrip drrip lru lru lru 1
./build_champsim.sh bimodal no no bingo_dpc3 no no no no lru lru lru drrip hawkeye lru lru lru 1 
./build_champsim.sh bimodal no no bingo_dpc3 no no no no lru lru lru drrip ship++ lru lru lru 1 
./build_champsim.sh bimodal no no bingo_dpc3 no no no no lru lru lru drrip mockingjay lru lru lru 1

# spp with varrying llc repl policies
./build_champsim.sh bimodal no no spp no no no no lru lru lru drrip lru lru lru lru 1
./build_champsim.sh bimodal no no spp no no no no lru lru lru drrip drrip lru lru lru 1
./build_champsim.sh bimodal no no spp no no no no lru lru lru drrip hawkeye lru lru lru 1 
./build_champsim.sh bimodal no no spp no no no no lru lru lru drrip ship++ lru lru lru 1 
./build_champsim.sh bimodal no no spp no no no no lru lru lru drrip mockingjay lru lru lru 1