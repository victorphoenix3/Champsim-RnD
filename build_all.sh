#server, spec
build_or_not=(1 1)

l1ipref=(fnlmma_25KB no)

l1dpref=(no ipcp_isca2020_critical ipcp_isca2020_critical no no no)

l2cpref=(no no ipcp_isca2020_critical bingo_critical ppf_critical spp_critical)



numofl1ipref=${#l1ipref[@]}

numofl1dpref=${#l1dpref[@]}

for((i=0; i<$numofl1ipref; i++))
do 
	if [ ${build_or_not[i]} -eq 1 ]
	then
		for((j=0; j<$numofl1dpref; j++))
		do
			echo "$l1ipref[i] $l1dpref[j] $l2cpref[j]"
			./build_champsim.sh hashed_perceptron ${l1ipref[i]} ${l1dpref[j]} ${l2cpref[j]} no no no no lru lru lru srrip drrip lru lru lru 1 || exit
			mv bin/hashed_perceptron-${l1ipref[i]}-${l1dpref[j]}-${l2cpref[j]}-no-no-no-no-lru-lru-lru-srrip-drrip-lru-lru-lru-1core bin/hashed_perceptron-${l1ipref[i]}-${l1dpref[j]}_updatedCritConditions-${l2cpref[j]}-no-no-no-no-lru-lru-lru-srrip-drrip-lru-lru-lru-1core
		done
	fi
done
