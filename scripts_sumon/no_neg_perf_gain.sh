echo 'benchmarks,L1D_miss_latency,L2C_miss_latency,LLC_miss_latency,L1D_neg,L2C_neg,LLC_neg,cycles,ipc_old' > $1.csv

for file in *core.txt; do

trace=$(echo $file | sed -e 's/.champsimtrace.xz[^ ]*//g')

L1D_miss_latency=$(grep "L1D AVERAGE MISS LATENCY LOAD:" $file | awk '{print $6}')
L2C_miss_latency=$(grep "L2C AVERAGE MISS LATENCY LOAD:" $file | awk '{print $6}')
LLC_miss_latency=$(grep "LLC AVERAGE MISS LATENCY LOAD:" $file | awk '{print $6}')

L1D_neg=$(grep L1D_interactions $file | awk '{print $3}')
L2C_neg=$(grep L2C_interactions $file | awk '{print $3}')
LLC_neg=$(grep LLC_interactions $file | awk '{print $3}')

cycles=$(grep "Finished" $file | awk '{print $7}')
old_IPC=$(grep "Finished" $file | awk '{print $10}')

echo $trace,$L1D_miss_latency,$L2C_miss_latency,$LLC_miss_latency,$L1D_neg,$L2C_neg,$LLC_neg,$cycles,$old_IPC >> $1.csv

done