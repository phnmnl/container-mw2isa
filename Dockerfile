FROM isatools/isatools:3.6-slim-stretch-0.9.4

LABEL maintainer="PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )"
LABEL Description="Convert MWTab to ISA-Tab"
LABEL software="mw2isa"
LABEL software.version="0.9.4"
LABEL version="0.3"


ADD run_test1.sh /usr/local/bin/run_test1.sh
RUN chmod a+x /usr/local/bin/run_test1.sh

ADD run_mwtab2isa.py /usr/local/bin/
RUN chmod a+x /usr/local/bin/run_mwtab2isa.py

ENTRYPOINT ["run_mwtab2isa.py"]