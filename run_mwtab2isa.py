#!/usr/bin/env python3

import sys
import shutil

if len(sys.argv) < 3:
   print("Usage: run_mwtab2isa.py mwtab_study_id target_dir")
   sys.exit(0)

mwtab_study_id = sys.argv[1]
target_dir = sys.argv[2]
try:
    from isatools.convert.mw2isa import mw2isa_convert
    mw2isa_convert(studyid=mwtab_study_id, outputdir=target_dir)
    
    if target_dir is not None:
        shutil.make_archive('out', 'zip', target_dir)
        shutil.rmtree(target_dir)
        print("ISA-Tab written to out.zip")
    else:
        print("There was an i/o problem with the ISA-Tab.")

except ImportError as e:
    raise RuntimeError("Could not import isatools package")
