#!/usr/bin/env bash
set -euo pipefail

NETID="cosminvasilesc"
REMOTE_DIR="/scratch/${NETID}/MIA-RESEARCH/MIA_Adv"

ssh delftblue << EOF
set -euo pipefail
cd "${REMOTE_DIR}"
git pull
sbatch run_delftblue.sh
EOF

# RUN THIS LOCALLY!