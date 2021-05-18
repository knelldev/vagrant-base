#!/bin/bash
NC='\033[0m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'

# usage:
# section_echo "Training unicorns"
function section_echo() {
    echo ""
    echo -e "${YELLOW}[=== $1 ===]${NC}"
}

# usage:
# colored_echo "Training pegasus"
#
function colored_echo() {
    echo -e "${ORANGE}$1${NC}"
}
