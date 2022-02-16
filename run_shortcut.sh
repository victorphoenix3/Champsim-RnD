
./run_champsim.sh bimodal-no-no-no-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core 50 50 ../../biswa/SPEC2017Traces 607.cactuBSSN_s-3477B.champsimtrace.xz stats/window_approach_test &

./run_suite.sh bimodal-no-no-no-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_neg_all_traces/no_pref/lru 50 50

./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_neg_all_traces/spp/lru 50 50
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-drrip-drrip-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/spp/drrip 50 50
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-drrip-mockingjay-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/spp/mockingjay 50 50
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-drrip-ship++-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/spp/ship++ 50 50
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-drrip-hawkeye-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/spp/hawkeye 50 50

./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_L1D_all_traces/ipcp/lru 50 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-drrip-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/ipcp/drrip 50 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-mockingjay-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/ipcp/mockingjay 50 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-ship++-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/ipcp/ship++ 50 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-hawkeye-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/ipcp/hawkeye 50 50

./run_suite.sh bimodal-no-bingo_dpc3-bingo_dpc3-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_neg_all_traces/bingo/drrip 50 50
./run_suite.sh bimodal-no-bingo_dpc3-bingo_dpc3-no-no-no-no-lru-lru-lru-drrip-drrip-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/bingo/drrip 50 50
./run_suite.sh bimodal-no-bingo_dpc3-bingo_dpc3-no-no-no-no-lru-lru-lru-drrip-mockingjay-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/bingo/mockingjay 50 50
./run_suite.sh bimodal-no-bingo_dpc3-bingo_dpc3-no-no-no-no-lru-lru-lru-drrip-ship++-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/bingo/ship++ 50 50
./run_suite.sh bimodal-no-bingo_dpc3-bingo_dpc3-no-no-no-no-lru-lru-lru-drrip-hawkeye-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/window_approach_all_traces/bingo/hawkeye 50 50


//multicore
./run_4core.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-4core 50 50 ../../biswa/SPEC2017Traces 607.cactuBSSN_s-3477B.champsimtrace.xz stats/window_approach_test &
