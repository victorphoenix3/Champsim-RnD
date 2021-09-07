
#[branch_pred] [l1i_pref] [l1d_pref] [l2c_pref] [llc_pref] [itlb_pref] [dtlb_pref] [stlb_pref] [btb_repl] [l1i_repl] [l1d_repl] [l2c_repl] [llc_repl] [itlb_repl] [dtlb_repl] [stlb_repl] [num_core] <= binary name consists of.

#Running SERVER simulations for 50-50M instructions
numwarmup=50
numsim=100

parallelismcount=45

l1ipref=no
#l1ipref=(fnlmma_ipc fnlmma_25KB)
#l1dpref=(ipcp_criticalStatic ipcp_critical_MTMF5) #no ipcp_isca2020 ipcp_isca2020 ipcp_isca2020 ipcp_isca2020 no ipcp_isca2020 bingo_dpc3 no no idealL1D ipcp_256entr_criticalSetAssoc ipcp_256entr_critical ipcp_isca2020_256entr ipcp_isca2020_256entr ipcp_isca2020_isb_criticalSetAssoc ipcp_isca2020_isb) 	
#l2cpref=(no no) # no ipcp_isca2020 spp ppf isb_ideal isb_ideal no spp ppf no no no no isb_ideal no no)

l1dpref=(ipcp_isca2020_crit_bef_after_stats)
#(ipcp_isca2020_criticalStatic ipcp_isca2020_criticalStatic no no bingo_criticalStatic no)
#(bingo_critical_purely_ip_based no)
#(ipcp_isca2020_noTranslationPenaltyForPrefetches ipcp_isca2020_noTranslationPenaltyForPrefetches bingo_dpc3_noTranslationPenaltyForPrefetches)
#(ipcp_critical_energy ipcp_critical_energy)
#(bingo_critical bingo_dpc3_writeCountUpdated no no)
#(ipcp_critical_energy ipcp_critical_energy no no) #(DRAMBanksInterleaved ipcp_isca2020_DRAMBanksInterleaved bingo_dpc3_DRAMBanksInterleaved no no)
l2cpref=(no)
#(no ipcp_isca2020_criticalStatic spp_criticalStatic ppf_criticalStatic no bingo_criticalStatic)
#(no bingo_critical_purely_ip_based)
#(no ipcp_isca2020 no)
#(ipcp_critical no)
#(no no bingo_critical bingo_dpc3_writeCountUpdated)
#(ipcp_critical no ppf_critical spp_critical) #(no no no spp_DRAMBanksInterleaved ppf_DRAMBanksInterleaved)

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

tracedir=../SPEC2017/
traces=$(cat scripts/intensive_trace_list.txt)
results_folder=SPEC2017_SOTA_results

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
