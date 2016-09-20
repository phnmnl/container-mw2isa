import sys
import os
mwtab_study_id = sys.argv[1]
target_dir = sys.argv[2]
try:
    from isatools.convert import mw2isatab
except ImportError as e:
    raise RuntimeError("Could not import isatools package")
mw2isatab.convert(open(mwtab_study_id), target_dir)