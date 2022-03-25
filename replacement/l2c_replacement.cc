#include "cache.h"

#define maxRRPV 3
#define NUM_POLICY 2
#define SDM_SIZE 32
#define TOTAL_SDM_SETS NUM_CPUS*NUM_POLICY*SDM_SIZE
#define BIP_MAX 32
#define PSEL_WIDTH 10
#define PSEL_MAX ((1<<PSEL_WIDTH)-1)
#define PSEL_THRS PSEL_MAX/2

uint32_t l2_rrpv[L2C_SET][L2C_WAY],
         l2_bip_counter = 0,
         l2_PSEL[NUM_CPUS];
unsigned l2_rand_sets[TOTAL_SDM_SETS];

void CACHE::l2c_initialize_replacement()
{
    cout << "Initialize DRRIP state for L2C" << endl;

    for(int i=0; i<L2C_SET; i++) {
        for(int j=0; j<L2C_WAY; j++)
            l2_rrpv[i][j] = maxRRPV;
    }

    // randomly selected sampler sets
    //srand(time(NULL));
    unsigned long rand_seed = 1;
    unsigned long max_rand = 1048576;
    uint32_t my_set = L2C_SET;
    int do_again = 0;
    for (int i=0; i<TOTAL_SDM_SETS; i++) {
        do {
            do_again = 0;
            rand_seed = rand_seed * 1103515245 + 12345;
            l2_rand_sets[i] = ((unsigned) ((rand_seed/65536) % max_rand)) % my_set;
            //printf("Assign l2_rand_sets[%d]: %u  L2C: %u\n", i, l2_rand_sets[i], my_set);
            for (int j=0; j<i; j++) {
                if (l2_rand_sets[i] == l2_rand_sets[j]) {
                    do_again = 1;
                    break;
                }
            }
        } while (do_again);
        //printf("l2_rand_sets[%d]: %d\n", i, l2_rand_sets[i]);
    }

    for (int i=0; i<NUM_CPUS; i++)
        l2_PSEL[i] = 0;
}

int is_it_leader_l2c(uint32_t cpu, uint32_t set)
{
    uint32_t start = cpu * NUM_POLICY * SDM_SIZE,
             end = start + NUM_POLICY * SDM_SIZE;

    for (uint32_t i=start; i<end; i++)
        if (l2_rand_sets[i] == set)
            return ((i - start) / SDM_SIZE);

    return -1;
}

// called on every cache hit and cache fill
void CACHE::l2c_update_replacement_state(uint32_t cpu, uint32_t set, uint32_t way, uint64_t full_addr, uint64_t ip, uint64_t victim_addr, uint32_t type, uint8_t hit)
{
    // do not update replacement state for writebacks
    if (type == WRITEBACK) {
        l2_rrpv[set][way] = maxRRPV-1;
        return;
    }

	// cache hit
	if (hit) { 
		l2_rrpv[set][way] = 0; // for cache hit, DRRIP always promotes a cache line to the MRU position
		return;
	}

	// cache miss
    int leader = is_it_leader_l2c(cpu, set);

    if (leader == -1) { // follower sets
        if (l2_PSEL[cpu] > PSEL_THRS) { // follow BIP
            l2_rrpv[set][way] = maxRRPV;

            l2_bip_counter++;
            if (l2_bip_counter == BIP_MAX)
                l2_bip_counter = 0;
            if (l2_bip_counter == 0)
                l2_rrpv[set][way] = maxRRPV-1;
        } else // follow SRRIP
            l2_rrpv[set][way] = maxRRPV-1;

    } else if (leader == 0) { // leader 0: BIP
        if (l2_PSEL[cpu] > 0) l2_PSEL[cpu]--;
        l2_rrpv[set][way] = maxRRPV;

        l2_bip_counter++;
        if (l2_bip_counter == BIP_MAX) l2_bip_counter = 0;
        if (l2_bip_counter == 0) l2_rrpv[set][way] = maxRRPV-1;

	} else if (leader == 1) { // leader 1: SRRIP 
        if (l2_PSEL[cpu] < PSEL_MAX) l2_PSEL[cpu]++;
        l2_rrpv[set][way] = maxRRPV-1;

    } else // WE SHOULD NOT REACH HERE
        assert(0);
}

// find replacement victim
uint32_t CACHE::l2c_find_victim(uint32_t cpu, uint64_t instr_id, uint32_t set, const BLOCK *current_set, uint64_t ip, uint64_t full_addr, uint32_t type)
{
    // look for the maxRRPV line
    while (1)
    {
        for (int i=0; i<L2C_WAY; i++)
            if (l2_rrpv[set][i] == maxRRPV)
                return i;

        for (int i=0; i<L2C_WAY; i++)
            l2_rrpv[set][i]++;
    }

    // WE SHOULD NOT REACH HERE
    assert(0);
    return 0;
}

// use this function to print out your own stats at the end of simulation
void CACHE::l2c_replacement_final_stats()
{

}
