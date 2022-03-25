echo 'benchmarks,L1D_MPKI,L2C_MPKI,LLC_MPKI,L1D_LOAD_MISS,L2C_LOAD_MISS,LLC_LOAD_MISS,L1D_miss_latency,L2C_miss_latency,LLC_miss_latency,L1D_MSHR_occupancy,L2C_MSHR_occupancy,LLC_MSHR_occupancy,L1D_PKPI,L2C_PKPI,LLC_PKPI,L1D_NPKI,L2C_NPKI,LLC_NPKI,L1D_POS_frac,L2C_POS_frac,LLC_POS_frac,L1D_NEG_frac,L2C_NEG_frac,LLC_NEG_frac,cycles,ipc' > $1.csv

for file in *core.txt; do

trace=$(echo $file | sed -e 's/.champsimtrace.xz[^ ]*//g')

L1D_MPKI=$(grep "L1D LOAD      ACCESS:" $file | awk '{print $16}')
L2C_MPKI=$(grep "L2C LOAD      ACCESS:" $file | awk '{print $16}')
LLC_MPKI=$(grep "LLC LOAD      ACCESS:" $file | awk '{print $16}')

L1D_LOAD_MISS=$(grep "L1D LOAD      ACCESS:" $file | awk '{print $8}')
L2C_LOAD_MISS=$(grep "L2C LOAD      ACCESS:" $file | awk '{print $8}')
LLC_LOAD_MISS=$(grep "LLC LOAD      ACCESS:" $file | awk '{print $8}')

L1D_miss_latency=$(grep "L1D AVERAGE MISS LATENCY LOAD:" $file | awk '{print $6}')
L2C_miss_latency=$(grep "L2C AVERAGE MISS LATENCY LOAD:" $file | awk '{print $6}')
LLC_miss_latency=$(grep "LLC AVERAGE MISS LATENCY LOAD:" $file | awk '{print $6}')

L1D_MSHR_occupancy=$(grep "L1D AVERAGE MSHR OCCUPANCY(LOADS ONLY):" $file | awk '{print $6}')
L2C_MSHR_occupancy=$(grep "L2C AVERAGE MSHR OCCUPANCY(LOADS ONLY):" $file | awk '{print $6}')
LLC_MSHR_occupancy=$(grep "LLC AVERAGE MSHR OCCUPANCY(LOADS ONLY):" $file | awk '{print $6}')

L1D_PKPI=$(grep L1D_interactions $file | awk '{print $2/50000}')
L2C_PKPI=$(grep L2C_interactions $file | awk '{print $2/50000}')
LLC_PKPI=$(grep LLC_interactions $file | awk '{print $2/50000}')

L1D_NPKI=$(grep L1D_interactions $file | awk '{print $3/50000}')
L2C_NPKI=$(grep L2C_interactions $file | awk '{print $3/50000}')
LLC_NPKI=$(grep LLC_interactions $file | awk '{print $3/50000}')

L1D_POS_frac=$(grep L1D_interactions $file | awk '{print $5/100}')
L2C_POS_frac=$(grep L2C_interactions $file | awk '{print $5/100}')
LLC_POS_frac=$(grep LLC_interactions $file | awk '{print $5/100}')

L1D_NEG_frac=$(grep L1D_interactions $file | awk '{print $6/100}')
L2C_NEG_frac=$(grep L2C_interactions $file | awk '{print $6/100}')
LLC_NEG_frac=$(grep LLC_interactions $file | awk '{print $6/100}')

cycles=$(grep "Finished" $file | awk '{print $7}')
ipc=$(grep "Finished" $file | awk '{print $10}')

echo $trace,$L1D_MPKI,$L2C_MPKI,$LLC_MPKI,$L1D_LOAD_MISS,$L2C_LOAD_MISS,$LLC_LOAD_MISS,$L1D_miss_latency,$L2C_miss_latency,$LLC_miss_latency,$L1D_MSHR_occupancy,$L2C_MSHR_occupancy,$LLC_MSHR_occupancy,$L1D_PKPI,$L2C_PKPI,$LLC_PKPI,$L1D_NPKI,$L2C_NPKI,$LLC_NPKI,$L1D_POS_frac,$L2C_POS_frac,$LLC_POS_frac,$L1D_NEG_frac,$L2C_NEG_frac,$LLC_NEG_frac,$cycles,$ipc >> $1.csv

done