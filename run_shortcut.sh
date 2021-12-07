# ./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-drrip-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/llc/drrip 10 50
# ./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-srrip-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/llc/srrip 10 50
# ./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-pacman-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/llc/pacman 10 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-hawkeye-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/llc/hawkeye 10 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-ship-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/llc/ship 10 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-ship++-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/llc/ship++ 10 50

./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-hawkeye-lru-lru-lru-1core traces/clientserver stats/replacement/clientserver/llc/hawkeye 10 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-ship-lru-lru-lru-1core traces/clientserver stats/replacement/clientserver/llc/ship 10 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-ship++-lru-lru-lru-1core traces/clientserver stats/replacement/clientserver/llc/ship++ 10 50


# ./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/l2c/drrip 10 50
# ./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-srrip-lru-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/l2c/srrip 10 50
# ./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-pacman-lru-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/l2c/pacman 10 50

# ./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-drrip-lru-lru-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/l1d/drrip 10 50
# ./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-srrip-lru-lru-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/l1d/srrip 10 50
# ./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-pacman-lru-lru-lru-lru-lru-1core traces/SPEC2017 stats/replacement/spec2017/l1d/pacman 10 50


./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV16-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 1 1 ./traces/SPEC2017/ 602.gcc_s-1850B.champsimtrace.xz testAT
  