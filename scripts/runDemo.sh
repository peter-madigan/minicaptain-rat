#!/bin/bash
cd /global/homes/p/pmadigan/work/sim
source setup.sh
source rat-pac/env.sh
cd rat-pac

scons

cd ../minicaptain-rat

mkdir -v data/minicaptain_demo

for runno in "$@"; do
    echo "Submitting job for run $runno..."
    qsub -v runnumber="$runno" -l projectio=1 -j y -o "logs" scripts/runSingle.sh
done
