./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-hawkeye-lru-lru-lru-1core traces/SPEC2017 stats/interaction_window/ipcp/hawkeye 5 10
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core traces/SPEC2017 stats/interaction_window/ipcp/lru 5 10
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-lru-ship++-lru-lru-lru-1core traces/SPEC2017 stats/interaction_window/ipcp/ship++ 5 10
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-lru-hawkeye-lru-lru-lru-1core traces/SPEC2017 stats/interaction_window/spp/hawkeye 5 10
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core traces/SPEC2017 stats/interaction_window/spp/lru 5 10
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-lru-ship++-lru-lru-lru-1core traces/SPEC2017 stats/interaction_window/spp/ship++ 5 10

./run_champsim.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-lru-lru-lru-lru-lru-1core 2 2 ./traces/SPEC2017 605.mcf_s-1644B.champsimtrace.xz stats/window_approach
