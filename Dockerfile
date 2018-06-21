FROM isatools/isatools:3.6-alpine-0.9.4

LABEL maintainer="PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )"
LABEL Description="Convert MWTab to ISA-Tab"
LABEL software="mw2isa"
LABEL software.version="0.9.5"
LABEL version="0.5"


ADD run_test1.sh /usr/local/bin/run_test1.sh
RUN chmod a+x /usr/local/bin/run_test1.sh

ADD mw2isatab.py /usr/local/bin/mw2isatab.py
RUN chmod a+x /usr/local/bin/mw2isatab.py

ENTRYPOINT ["run_mwtab2isa.py"]