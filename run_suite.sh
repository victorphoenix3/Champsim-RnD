if [ "$#" -ne 5 ]; then
    echo "Illegal number of parameters"
    echo "Usage: ./run_suite.sh [BUILD_FILE] [TRACE_DIR] [OUT_DIR] [N_WARM] [N_SIM]"
    exit 1
fi

BUILD=$1
TRACE_DIR=$2
OUT_DIR=$3
WARM=$4
SIM=$5

TRACES=$(ls ${TRACE_DIR})

for file in ${TRACES}
do
  taskset -c 4-15 ./run_champsim.sh ${BUILD} ${WARM} ${SIM} ${TRACE_DIR} ${file} ${OUT_DIR} &
done