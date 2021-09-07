
#[branch_pred] [l1i_pref] [l1d_pref] [l2c_pref] [llc_pref] [itlb_pref] [dtlb_pref] [stlb_pref] [btb_repl] [l1i_repl] [l1d_repl] [l2c_repl] [llc_repl] [itlb_repl] [dtlb_repl] [stlb_repl] [num_core] <= binary name consists of.

#Running SERVER simulations for 50-50M instructions
numwarmup=50
numsim=50

parallelismcount=42

l1ipref=no
#l1ipref=(fnlmma_ipc fnlmma_25KB)
l1dpref=(ipcp_isca2020 ipcp_isca2020)
#ipcp_isca2020_crit_bef_after_stats)
#bingo_critical_124KB bingo_dpc3_124KB no no)
#(ipcp_isca2020_criticalStatic ipcp_isca2020_criticalStatic no no bingo_criticalStatic no)
#(bingo_critical_purely_ip_based no)
#(ipcp_isca2020_noTranslationPenaltyForPrefetches ipcp_isca2020_noTranslationPenaltyForPrefetches bingo_dpc3_noTranslationPenaltyForPrefetches)
#(ipcp_critical_energy ipcp_critical_energy)
#(bingo_critical bingo_dpc3_writeCountUpdated no no)
#(ipcp_critical_energy ipcp_critical_energy no no) #(bingo_dpc3_PrefFillLevelStats no no no)	
l2cpref=(ipcp_isca2020 no)
#no bingo_critical_124KB bingo_dpc3_124KB) 
#(no ipcp_isca2020_criticalStatic spp_criticalStatic ppf_criticalStatic no bingo_criticalStatic)
#(no bingo_critical_purely_ip_based)
#(no ipcp_isca2020 no)
#(ipcp_critical no)
#(no no bingo_critical bingo_dpc3_writeCountUpdated)
#(ipcp_critical no ppf_critical spp_critical) #(no bingo_dpc3 ppf_PrefFillLevelStats spp_PrefFillLevelStats) 
llcpref=no

#tlb prefetchers
tlb_pref=no-no-no


#branch predictor
branchPredictor=hashed_perceptron

#cache replacement policies in the format: btb-l1i-l1d-l2c-llc
cache_repl=lru-lru-lru-srrip-drrip

#tlb replacement policies in the format: itlb-dtlb-stlb
tlb_repl=lru-lru-lru

numcore=1

tracedir=../IPC-traces/
traces=$(cat scripts/ipc_trace_list.txt)
results_folder=IPC_SOTA_results

numofpref=${#l1dpref[@]}


#Neelu: Variables ending now. Kindly add new variables above this line.


#for((i=0; i<$numofpref; i++))
#do
#	echo ${l1ipref[i]}
#   ./build.sh ${cache_repl}-${tlb_repl} 1 ${l1ipref}-${l1dpref[i]}-${l2cpref[i]}-${llcpref}-${tlb_pref} || exit
#done

#exit

tracenum=0
count=0
iterator=0

for((i=0; i<$numofpref; i++))
do 
		for trace in $traces;
		do
			if [ ${count} -lt ${parallelismcount} ]
            then
				./run_champsim.sh $branchPredictor-${l1ipref}-${l1dpref[i]}-${l2cpref[i]}-${llcpref}-${tlb_pref}-$cache_repl-$tlb_repl-1core $numwarmup $numsim $tracedir $trace $results_folder &
			count=`expr $count + 1`

			else
				./run_champsim.sh $branchPredictor-${l1ipref}-${l1dpref[i]}-${l2cpref[i]}-${llcpref}-${tlb_pref}-$cache_repl-$tlb_repl-1core $numwarmup $numsim $tracedir $trace $results_folder
				count=0
			fi
		done
		now=$(date)
		echo "Number of SERVER traces simulated - $count in iteration $iterator at time: $now" 

done

echo "Done with count $count"
