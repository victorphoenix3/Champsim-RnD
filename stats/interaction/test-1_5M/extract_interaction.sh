grep L1D_positive *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark P_evicts_deadC C_evicts_inaccP P_evicts_inaccP\n/' | sed -e 's/ /,/g' > L1D_positive.csv
grep L2C_positive *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark P_evicts_deadC C_evicts_inaccP P_evicts_inaccP\n/' | sed -e 's/ /,/g' > L2C_positive.csv
grep LLC_positive *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark P_evicts_deadC C_evicts_inaccP P_evicts_inaccP\n/' | sed -e 's/ /,/g' > LLC_positive.csv


grep L1D_negative *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark inaccP_evicts_C deadC_evicts_P inaccP_evicts_P\n/' | sed -e 's/ /,/g' > L1D_negative.csv
grep L2C_negative *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark inaccP_evicts_C deadC_evicts_P inaccP_evicts_P\n/' | sed -e 's/ /,/g' > L2C_negative.csv
grep LLC_negative *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark inaccP_evicts_C deadC_evicts_P inaccP_evicts_P\n/' | sed -e 's/ /,/g' > LLC_negative.csv


grep L1D_neutral *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark P_evicts_C C_evicts_P inaccP_evicts_deadC deadC_evicts_inaccP inaccP_evicts_inaccP P_evicts_P\n/' | sed -e 's/ /,/g' > L1D_neutral.csv
grep L2C_neutral *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark P_evicts_C C_evicts_P inaccP_evicts_deadC deadC_evicts_inaccP inaccP_evicts_inaccP P_evicts_P\n/' | sed -e 's/ /,/g' > L2C_neutral.csv
grep LLC_neutral *core.txt | sed -e 's/.champsimtrace.xz[^ ]*//g' | sed -e '1s/^/benchmark P_evicts_C C_evicts_P inaccP_evicts_deadC deadC_evicts_inaccP inaccP_evicts_inaccP P_evicts_P\n/' | sed -e 's/ /,/g' > LLC_neutral.csv
