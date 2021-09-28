#!/bin/bash

#Neelu: Modifying to take region size and degree as a cmd line arg for ip_stride at l1. 

if [ "$#" -ne 17 ]; then
    echo "Illegal number of parameters"
    echo "Usage: ./build_champsim.sh [branch_pred] [l1i_pref] [l1d_pref] [l2c_pref] [llc_pref] [itlb_pref] [dtlb_pref] [stlb_pref] [btb_repl] [l1i_repl] [l1d_repl] [l2c_repl] [llc_repl] [itlb_repl] [dtlb_repl] [stlb_repl] [num_core]"
    exit 1
fi

# ChampSim configuration
BRANCH=$1           # branch/*.bpred
L1I_PREFETCHER=$2   # prefetcher/*.l1i_pref
L1D_PREFETCHER=$3   # prefetcher/*.l1d_pref
L2C_PREFETCHER=$4   # prefetcher/*.l2c_pref
LLC_PREFETCHER=$5   # prefetcher/*.llc_pref
ITLB_PREFETCHER=$6  # prefetcher/*.itlb_pref
DTLB_PREFETCHER=$7  # prefetcher/*.dtlb_pref
STLB_PREFETCHER=$8  # prefetcher/*.stlb_pref

BTB_REPLACEMENT=$9         # prefetcher/*.btb_repl      
L1I_REPLACEMENT=${10}   # prefetcher/*.l1i_repl
L1D_REPLACEMENT=${11}   # prefetcher/*.l1d_repl
L2C_REPLACEMENT=${12}   # prefetcher/*.l2c_repl
LLC_REPLACEMENT=${13}   # prefetcher/*.llc_repl
ITLB_REPLACEMENT=${14}  # prefetcher/*.itlb_repl
DTLB_REPLACEMENT=${15}  # prefetcher/*.dtlb_repl
STLB_REPLACEMENT=${16}  # prefetcher/*.stlb_repl

NUM_CORE=${17}         # tested up to 8-core system


############## Some useful macros ###############
BOLD=$(tput bold)
NORMAL=$(tput sgr0)
#################################################

#Parameters, alias (to be used in binary name) and their corresponding files. Range of values for each parameter.
#parameters=(NUM_OF_IPS_IN_CRITICAL_IP_TRAINING NUM_OF_CRITICAL_IP_TRAINING_TABLE_WAYS)
#parameters_aliases=(pistEntr pistways)
#parameters_files=(src/ooo_cpu.cc src/ooo_cpu.cc)

#parameters_range_file_content=$(cat scripts/sensitivity_input_file.txt)
#parameters_range_file_index=0

#max_index=${#parameters_range_file_content[@]}
#echo $max_index

#echo $parameters_range_file_content

#parameters_range_file_content_list=$(echo $parameters_range_file_content | tr " " "\n")

#unset 'parameters_range_file_content_list[0]'
#unset 'parameters_range_file_content_list[1]'

#for line in $parameters_range_file_content_list;
#do
#	echo $line
#done

#exit

#PREV_PIST_WAYS=1
#PREV_PIST_ENTR=4
#PIST_ENTR=4

PREV_CIC_SETS=8
PREV_CIC_WAYS=1
CIC_SETS=8

DRAM_IO_FREQ_DIV=12

#while [ ${PIST_ENTR} -lt 129 ]
#while [ ${CIC_SETS} -lt 65 ] 
#do
	#PIST_WAYS=1
#	CIC_WAYS=1

	#while [ ${PIST_WAYS} -lt 9 -a ${PIST_WAYS} -le ${PIST_ENTR} ]
while [ ${DRAM_IO_FREQ_DIV} -lt 13 ]
do 

	DRAM_IO_FREQ="6400/${DRAM_IO_FREQ_DIV}"

	# Sanity check
	if [ ! -f ./branch/${BRANCH}.bpred ]; then
	    echo "[ERROR] Cannot find branch predictor"
		echo "[ERROR] Possible branch predictors from branch/*.bpred "
	    find branch -name "*.bpred"
	    exit 1
	fi

	if [ ! -f ./prefetcher/${L1I_PREFETCHER}.l1i_pref ]; then
	echo "[ERROR] Cannot find L1I prefetcher"
	echo "[ERROR] Possible L1I prefetchers from prefetcher/*.l1i_pref "
	find prefetcher -name "*.l1i_pref"
	exit 1
	fi


	if [ ! -f ./prefetcher/${L1D_PREFETCHER}.l1d_pref ]; then
	    echo "[ERROR] Cannot find L1D prefetcher"
		echo "[ERROR] Possible L1D prefetchers from prefetcher/*.l1d_pref "
	    find prefetcher -name "*.l1d_pref"
	    exit 1
	fi

	if [ ! -f ./prefetcher/${L2C_PREFETCHER}.l2c_pref ]; then
	    echo "[ERROR] Cannot find L2C prefetcher"
		echo "[ERROR] Possible L2C prefetchers from prefetcher/*.l2c_pref "
	    find prefetcher -name "*.l2c_pref"
	    exit 1
	fi

	if [ ! -f ./replacement/${L1I_REPLACEMENT}.l1i_repl ]; then
	    echo "[ERROR] Cannot find L1I replacement policy"
		echo "[ERROR] Possible L1I replacement policy from replacement/*.l1i_repl"
	    find replacement -name "*.l1i_repl"
	    exit 1
	fi

	if [ ! -f ./replacement/${L1D_REPLACEMENT}.l1d_repl ]; then
	    echo "[ERROR] Cannot find L1D replacement policy"
		echo "[ERROR] Possible L1D replacement policy from replacement/*.l1d_repl"
	    find replacement -name "*.l1d_repl"
	    exit 1
	fi

	if [ ! -f ./replacement/${L2C_REPLACEMENT}.l2c_repl ]; then
	    echo "[ERROR] Cannot find L2C replacement policy"
		echo "[ERROR] Possible L2C replacement policy from replacement/*.l2c_repl"
	    find replacement -name "*.l2c_repl"
	    exit 1
	fi


	if [ ! -f ./prefetcher/${LLC_PREFETCHER}.llc_pref ]; then
	    echo "[ERROR] Cannot find LLC prefetcher"
		echo "[ERROR] Possible LLC prefetchers from prefetcher/*.llc_pref "
	    find prefetcher -name "*.llc_pref"
	    exit 1
	fi

	if [ ! -f ./prefetcher/${ITLB_PREFETCHER}.itlb_pref ]; then
	    echo "[ERROR] Cannot find ITLB prefetcher"
	    echo "[ERROR] Possible ITLB prefetchers from prefetcher/*.itlb_pref "
	    find prefetcher -name "*.itlb_pref"
	    exit 1
	fi

	if [ ! -f ./prefetcher/${DTLB_PREFETCHER}.dtlb_pref ]; then
	    echo "[ERROR] Cannot find DTLB prefetcher"
	    echo "[ERROR] Possible DTLB prefetchers from prefetcher/*.dtlb_pref "
	    find prefetcher -name "*.dtlb_pref"
	    exit 1
	fi

	if [ ! -f ./prefetcher/${STLB_PREFETCHER}.stlb_pref ]; then
	    echo "[ERROR] Cannot find STLB prefetcher"
	    echo "[ERROR] Possible STLB prefetchers from prefetcher/*.stlb_pref "
	    find prefetcher -name "*.stlb_pref"
	    exit 1
	fi


	if [ ! -f ./replacement/${LLC_REPLACEMENT}.llc_repl ]; then
	    echo "[ERROR] Cannot find LLC replacement policy"
		echo "[ERROR] Possible LLC replacement policy from replacement/*.llc_repl"
	    find replacement -name "*.llc_repl"
	    exit 1
	fi

	if [ ! -f ./replacement/${ITLB_REPLACEMENT}.itlb_repl ]; then
	    echo "[ERROR] Cannot find ITLB replacement policy"
		echo "[ERROR] Possible ITLB replacement policy from replacement/*.itlb_repl"
	    find replacement -name "*.itlb_repl"
	    exit 1
	fi

	if [ ! -f ./replacement/${DTLB_REPLACEMENT}.dtlb_repl ]; then
	    echo "[ERROR] Cannot find DTLB replacement policy"
		echo "[ERROR] Possible DTLB replacement policy from replacement/*.dtlb_repl"
	    find replacement -name "*.dtlb_repl"
	    exit 1
	fi

	if [ ! -f ./replacement/${STLB_REPLACEMENT}.stlb_repl ]; then
	    echo "[ERROR] Cannot find STLB replacement policy"
		echo "[ERROR] Possible STLB replacement policy from replacement/*.stlb_repl"
	    find replacement -name "*.stlb_repl"
	    exit 1
	fi


	# Check num_core
	re='^[0-9]+$'
	if ! [[ $NUM_CORE =~ $re ]] ; then
	    echo "[ERROR]: num_core is NOT a number" >&2;
	    exit 1
	fi

	# Check for multi-core
	if [ "$NUM_CORE" -gt "1" ]; then
	    echo "Building multi-core ChampSim..."
	    sed -i.bak 's/\<NUM_CPUS 1\>/NUM_CPUS '${NUM_CORE}'/g' inc/champsim.h
	#	sed -i.bak 's/\<DRAM_CHANNELS 1\>/DRAM_CHANNELS 2/g' inc/champsim.h
	#	sed -i.bak 's/\<DRAM_CHANNELS_LOG2 0\>/DRAM_CHANNELS_LOG2 1/g' inc/champsim.h
	else
	    if [ "$NUM_CORE" -lt "1" ]; then
		echo "Number of core: $NUM_CORE must be greater or equal than 1"
		exit 1
	    else
		echo "Building single-core ChampSim..."
	    fi
	fi
	echo

	#Neelu: Modifying the degree and region size in the ip_stride_region prefetcher file. 
	#sed -i.bak 's/\<PREFETCH_DEGREE '$PREV_DEGREE'\>/PREFETCH_DEGREE '$DEGREE'/g' prefetcher/${L1D_PREFETCHER}.l1d_pref

	#Neelu: Modifying prefetch distance in ipcp_crossPages for timeliness 
	#sed -i.bak 's/\<PREF_DISTANCE '$PREV_DIST'\>/PREF_DISTANCE '$DIST'/g' prefetcher/${L1D_PREFETCHER}.l1d_pref
	#sed -i.bak 's/\<CPLX_DIST '$PREV_DIST'\>/CPLX_DIST '$DIST'/g' prefetcher/${L1D_PREFETCHER}.l1d_pref

	#sed -i.bak 's/\<NUM_OF_IPS_IN_CRITICAL_IP_TRAINING '$PREV_PIST_ENTR'\>/NUM_OF_IPS_IN_CRITICAL_IP_TRAINING '$PIST_ENTR'/g' src/ooo_cpu.cc
	#sed -i.bak 's/\<NUM_OF_CRITICAL_IP_TRAINING_TABLE_WAYS '$PREV_PIST_WAYS'\>/NUM_OF_CRITICAL_IP_TRAINING_TABLE_WAYS '$PIST_WAYS'/g' src/ooo_cpu.cc

	#sed -i.bak 's/\<WOBBLY_CRITICAL_IP_CACHE_SETS '$PREV_CIC_SETS'\>/WOBBLY_CRITICAL_IP_CACHE_SETS '$CIC_SETS'/g' src/ooo_cpu.cc
	#sed -i.bak 's/\<WOBBLY_CRITICAL_IP_CACHE_WAYS '$PREV_CIC_WAYS'\>/WOBBLY_CRITICAL_IP_CACHE_WAYS '$CIC_WAYS'/g' src/ooo_cpu.cc

	sed -i.bak 's/\<DRAM_IO_FREQ 6400\>/DRAM_IO_FREQ 6400\/'${DRAM_IO_FREQ_DIV}'/g' inc/champsim.h

	# Change prefetchers and replacement policy
	cp branch/${BRANCH}.bpred branch/branch_predictor.cc
	cp prefetcher/${L1I_PREFETCHER}.l1i_pref prefetcher/l1i_prefetcher.cc
	cp prefetcher/${L1D_PREFETCHER}.l1d_pref prefetcher/l1d_prefetcher.cc
	cp prefetcher/${L2C_PREFETCHER}.l2c_pref prefetcher/l2c_prefetcher.cc
	cp prefetcher/${LLC_PREFETCHER}.llc_pref prefetcher/llc_prefetcher.cc
	cp prefetcher/${ITLB_PREFETCHER}.itlb_pref prefetcher/itlb_prefetcher.cc
	cp prefetcher/${DTLB_PREFETCHER}.dtlb_pref prefetcher/dtlb_prefetcher.cc
	cp prefetcher/${STLB_PREFETCHER}.stlb_pref prefetcher/stlb_prefetcher.cc
	cp replacement/${BTB_REPLACEMENT}.btb_repl replacement/btb_replacement.cc
	cp replacement/${L1I_REPLACEMENT}.l1i_repl replacement/l1i_replacement.cc
	cp replacement/${L1D_REPLACEMENT}.l1d_repl replacement/l1d_replacement.cc
	cp replacement/${L2C_REPLACEMENT}.l2c_repl replacement/l2c_replacement.cc
	cp replacement/${LLC_REPLACEMENT}.llc_repl replacement/llc_replacement.cc
	cp replacement/${ITLB_REPLACEMENT}.itlb_repl replacement/itlb_replacement.cc
	cp replacement/${DTLB_REPLACEMENT}.dtlb_repl replacement/dtlb_replacement.cc
	cp replacement/${STLB_REPLACEMENT}.stlb_repl replacement/stlb_replacement.cc

	# Build
	mkdir -p bin
	rm -f bin/champsim
	make clean
	make

	# Sanity check
	echo ""
	if [ ! -f bin/champsim ]; then
	    echo "${BOLD}ChampSim build FAILED!"
	    echo ""
	    exit 1
	fi

	echo "${BOLD}ChampSim is successfully built"
	echo "Branch Predictor: ${BRANCH}"
	echo "L1I Prefetcher: ${L1I_PREFETCHER}"
	echo "L1D Prefetcher: ${L1D_PREFETCHER}"
	echo "L2C Prefetcher: ${L2C_PREFETCHER}"
	echo "LLC Prefetcher: ${LLC_PREFETCHER}"
	echo "ITLB Prefetcher: ${ITLB_PREFETCHER}"
	echo "DTLB Prefetcher: ${DTLB_PREFETCHER}"
	echo "STLB Prefetcher: ${STLB_PREFETCHER}"
	echo "BTB Replacement: ${BTB_REPLACEMENT}"
	echo "L1I Replacement: ${L1I_REPLACEMENT}"
	echo "L1D Replacement: ${L1D_REPLACEMENT}"
	echo "L2C Replacement: ${L2C_REPLACEMENT}"
	echo "LLC Replacement: ${LLC_REPLACEMENT}"
	echo "ITLB Replacement: ${ITLB_REPLACEMENT}"
	echo "DTLB Replacement: ${DTLB_REPLACEMENT}"
	echo "STLB Replacement: ${STLB_REPLACEMENT}"
	echo "Cores: ${NUM_CORE}"
	#echo "PIST entr: ${PIST_ENTR}"
	#echo "PIST ways: ${PIST_WAYS}"
	#echo "CIC sets: ${CIC_SETS}"
	#echo "CIC ways: ${CIC_WAYS}"
	echo "DRAM IO FREQ DIV: ${DRAM_IO_FREQ_DIV}" 

	BINARY_NAME="${BRANCH}-${L1I_PREFETCHER}-${L1D_PREFETCHER}_DRAMIOFREQDIV${DRAM_IO_FREQ_DIV}-${L2C_PREFETCHER}-${LLC_PREFETCHER}-${ITLB_PREFETCHER}-${DTLB_PREFETCHER}-${STLB_PREFETCHER}-${BTB_REPLACEMENT}-${L1I_REPLACEMENT}-${L1D_REPLACEMENT}-${L2C_REPLACEMENT}-${LLC_REPLACEMENT}-${ITLB_REPLACEMENT}-${DTLB_REPLACEMENT}-${STLB_REPLACEMENT}-${NUM_CORE}core"

	echo "Binary: bin/${BINARY_NAME}"
	echo ""
	mv bin/champsim bin/${BINARY_NAME}


	# Restore to the default configuration
	sed -i.bak 's/\<NUM_CPUS '${NUM_CORE}'\>/NUM_CPUS 1/g' inc/champsim.h
	sed -i.bak 's/\<DRAM_IO_FREQ 6400\/'${DRAM_IO_FREQ_DIV}'\>/DRAM_IO_FREQ 6400/g' inc/champsim.h

	#sed -i.bak 's/\<DRAM_CHANNELS 2\>/DRAM_CHANNELS 1/g' inc/champsim.h
	#sed -i.bak 's/\<DRAM_CHANNELS_LOG2 1\>/DRAM_CHANNELS_LOG2 0/g' inc/champsim.h


	cp branch/bimodal.bpred branch/branch_predictor.cc
	cp prefetcher/no.l1i_pref prefetcher/l1i_prefetcher.cc
	cp prefetcher/no.l1d_pref prefetcher/l1d_prefetcher.cc
	cp prefetcher/no.l2c_pref prefetcher/l2c_prefetcher.cc
	cp prefetcher/no.llc_pref prefetcher/llc_prefetcher.cc
	cp prefetcher/no.itlb_pref prefetcher/itlb_prefetcher.cc
	cp prefetcher/no.dtlb_pref prefetcher/dtlb_prefetcher.cc
	cp prefetcher/no.stlb_pref prefetcher/stlb_prefetcher.cc
	cp replacement/lru.btb_repl replacement/btb_replacement.cc
	cp replacement/lru.l1d_repl replacement/l1d_replacement.cc
	cp replacement/lru.l1i_repl replacement/l1i_replacement.cc
	cp replacement/lru.l2c_repl replacement/l2c_replacement.cc
	cp replacement/lru.llc_repl replacement/llc_replacement.cc
	cp replacement/lru.itlb_repl replacement/itlb_replacement.cc
	cp replacement/lru.dtlb_repl replacement/dtlb_replacement.cc
	cp replacement/lru.stlb_repl replacement/stlb_replacement.cc

	
	#PREV_PIST_WAYS=$PIST_WAYS
	#PIST_WAYS=`expr $PIST_WAYS '*' 2`
	#PREV_CIC_WAYS=$CIC_WAYS
	#CIC_WAYS=`expr $CIC_WAYS '*' 2`
	DRAM_IO_FREQ_DIV=`expr $DRAM_IO_FREQ_DIV + 2` 
done
#PREV_CIC_SETS=$CIC_SETS
#CIC_SETS=`expr $CIC_SETS '*' 2`

#PREV_PIST_ENTR=$PIST_ENTR
	#PIST_ENTR=`expr $PIST_ENTR '*' 2`

#done

