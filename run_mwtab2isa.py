#!/usr/bin/env python3

import sys
import os

if len(sys.argv) < 3:
   print("Usage: run_mwtab2isa.py mwtab_study_id target_dir")
   sys.exit(0)

mwtab_study_id = sys.argv[1]
target_dir = sys.argv[2]
try:
    from isatools.convert import mw2isa
    mw2isa(mwtab_study_id, target_dir)
except ImportError as e:
    raise RuntimeError("Could not import isatools package")

