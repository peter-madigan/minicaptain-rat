#!/bin/bash
cd /global/homes/p/pmadigan/work/sim
source setup.sh
source rat-pac/env.sh
cd rat-pac

scons

cd ../minicaptain-rat

mkdir -v data/minicaptain_neutron
cp -v data/chain.C data/minicaptain_neutron

for runno in "$@"; do
    echo "Submitting job for run $runno..."
    qsub -l h_vmem=15G -v macro="minicaptain_neutron" -v runnumber="$runno" -m as -w e -l projectio=1 -j y -o "logs" scripts/runSingle.sh
done
