#!/bin/bash -l

module avail

cd /global/homes/p/pmadigan/work/sim
source setup.sh
source rat-pac/env.sh
cd minicaptain-rat/logs

rat -o "../data/${macro}/${macro}_${runnumber}.root" -s${runnumber} "../mac/${macro}.mac"