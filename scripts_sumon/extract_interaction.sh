grep $3_interactions *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmarks positive negative neutral\n/' | sed -e 's/ /,/g' > $1_$2_$3_ineractions.csv

# grep "{$2}_positive" $1/*core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark P_evicts_deadC C_evicts_inaccP P_evicts_inaccP\n/' | sed -e 's/ /,/g' > L1D_positive.csv

# grep "{$2}_negative" $1/*core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark inaccP_evicts_C deadC_evicts_P inaccP_evicts_P\n/' | sed -e 's/ /,/g' > L1D_negative.csv

# grep "{$2}_neutral" $1/*core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark P_evicts_C C_evicts_P inaccP_evicts_deadC deadC_evicts_inaccP inaccP_evicts_inaccP P_evicts_P\n/' | sed -e 's/ /,/g' > L1D_neutral.csv