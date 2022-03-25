# single trace
./run_champsim.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core 50 50 ../../biswa/SPEC2017Traces 602.gcc_s-2226B.champsimtrace.xz stats/test/micro_interaction/l1d &
./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV4-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core 50 50 ../../biswa/SPEC2017Traces 602.gcc_s-2226B.champsimtrace.xz stats/test/micro_interaction/l1d &
./run_champsim.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV8-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core 50 50 ../../biswa/SPEC2017Traces 602.gcc_s-2226B.champsimtrace.xz stats/test/micro_interaction/eliminate_late_problem &

## high bandwidth - 6400 MT/s
# nopref
./run_suite.sh bimodal-no-no-no-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/no_pref/lru 50 50
# SPP
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/spp/lru 50 50
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-drrip-drrip-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/spp/drrip 50 50
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-drrip-mockingjay-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/spp/mockingjay 50 50
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-drrip-ship++-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/spp/ship++ 50 50
./run_suite.sh bimodal-no-no-spp-no-no-no-no-lru-lru-lru-drrip-hawkeye-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/spp/hawkeye 50 50
# IPCP
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/high_dram_bw/ipcp/lru 50 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-drrip-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/ipcp/drrip 50 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-mockingjay-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/ipcp/mockingjay 50 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lrusumon123-drrip-ship++-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/ipcp/ship++ 50 50
./run_suite.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-hawkeye-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/ipcp/hawkeye 50 50
# Bingo
./run_suite.sh bimodal-no-bingo_dpc3-bingo_dpc3-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/bingo/lru 50 50
./run_suite.sh bimodal-no-bingo_dpc3-bingo_dpc3-no-no-no-no-lru-lru-lru-drrip-drrip-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/bingo/drrip 50 50
./run_suite.sh bimodal-no-bingo_dpc3-bingo_dpc3-no-no-no-no-lru-lru-lru-drrip-mockingjay-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/bingo/mockingjay 50 50
./run_suite.sh bimodal-no-bingo_dpc3-bingo_dpc3-no-no-no-no-lru-lru-lru-drrip-ship++-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/bingo/ship++ 50 50
./run_suite.sh bimodal-no-bingo_dpc3-bingo_dpc3-no-no-no-no-lru-lru-lru-drrip-hawkeye-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/6400/bingo/hawkeye 50 50


## multicore
./run_4core.sh bimodal-no-ipcp_isca2020-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-4core 50 50 ../../biswa/SPEC2017Traces 607.cactuBSSN_s-3477B.champsimtrace.xz stats/window_approach_test &

## bw - 800
# nopref
./run_suite.sh bimodal-no-no_DRAMIOFREQDIV8-no-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/low_dram_bw/800/no_pref/lru 50 50
# IPCP
./run_suite.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV8-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/low_dram_bw/800/ipcp/lru 50 50
# SPP
./run_suite.sh bimodal-no-no_DRAMIOFREQDIV8-spp-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/low_dram_bw/800/spp/lru 50 50

# bw - 1600
# nopref
./run_suite.sh bimodal-no-no_DRAMIOFREQDIV4-no-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/low_dram_bw/1600/no_pref/lru 50 50
# IPCP
./run_suite.sh bimodal-no-ipcp_isca2020_DRAMIOFREQDIV4-ipcp_isca2020-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/low_dram_bw/1600/ipcp/lru 50 50
# SPP
./run_suite.sh bimodal-no-no_DRAMIOFREQDIV4-spp-no-no-no-no-lru-lru-lru-drrip-lru-lru-lru-lru-1core ../../biswa/SPEC2017Traces stats/micro__interactions/low_dram_bw/1600/spp/lru 50 50