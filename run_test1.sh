#!/bin/bash


echo "testing if invocation from docker works fine"

# Run the tool with the test data
mwtab2isa.py -html_file /tmp/study-dir/index.html  -out_dir /data/ -study_id "ST000406"



# Check that files were created/correctness
if ! [ -e "/data/study-dir/index.html" ]; then
    echo "HTML file doesn't exist"
    exit 1
fi

if ! [ -e "/tmp/study-dir/test-study/i_Investigation.txt" ]; then
    echo "ISA investigation file not found"
    exit 1
fi

echo "All files created successfully"
