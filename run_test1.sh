#!/bin/bash

echo "testing if invocation from docker works fine"

# Run the tool with the test data
run_mwtab2isa.py ST000406 /

if ! [ -e "/ST000406/i_investigation.txt" ]; then
    echo "ISA investigation file not found"
    exit 1
fi

if ! [ -e "/ST000406/s_ST000406.txt" ]; then
    echo "ISA study file not found"
    exit 1
fi

if ! [ -e "/ST000406/a_ST000406_AN000646.txt" ]; then
    echo "ISA assay file not found"
    exit 1
fi


if ! [ -e "/ST000406/data/ST000406_AN000646_raw_data.txt" ]; then
    echo "Raw data file not found"
    exit 1
fi

echo "All files created successfully"
