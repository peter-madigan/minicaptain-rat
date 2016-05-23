#!/bin/bash -l

module avail

cd /global/homes/p/pmadigan/work/sim
source setup.sh
source rat-pac/env.sh
cd minicaptain-rat

rat -o "data/minicaptain_demo/minicaptain_demo_${runnumber}.root" -s${runnumber} mac/minicaptain_demo.mac