import sys
import os

# mwtab_study_id = sys.argv[1]
# target_dir = sys.argv[2]

try:
    from isatools.convert import mw2isa
    mw2isa(mwtab_study_id, target_dir)
	from isatools import isatab
	from mw2isa import mw2isa_convert
	
	success, study_id, validate = mw2isa_convert(studyid="ST000367", outputdir='output', dl_option="no", validate_option="no")

	if success:
		print("conversion successful")
	elif success and validate:
	    print("conversion successful, invoking the validator for " + study_id)
	    try:
	        isatab.validate2(open(outputdir + "/" + study_id + '/i_investigation.txt'), './isaconfig-default_v2015-07-02/')
	    except:
	        print("conversion successful but validation failed")
	else        
else:
    print("conversion failed, validation was not invoked")
except ImportError as e:
    raise RuntimeError("Could not import isatools package")

