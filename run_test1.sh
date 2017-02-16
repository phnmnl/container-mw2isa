#!/bin/bash


echo "testing if invocation from docker works fine"

# Run the tool with the test data
run_mwtab2isa.py "ST000406" "/data/"
#run_mwtab2isa.py "ST000406" "data/" "tmp/study-dir/index.html"


# Check that files were created/correctness
#if ! [ -e "/data/study-dir/index.html" ]; then
#    echo "HTML file doesn't exist"
#    exit 1
#fi

if ! [ -e "/data/i_investigation.txt" ]; then
    echo "ISA investigation file not found"
    exit 1
fi

echo "All files created successfully"
