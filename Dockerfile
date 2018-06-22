FROM isatools/isatools:3.6-alpine-0.9.4

LABEL maintainer="PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )"
LABEL Description="Convert MWTab to ISA-Tab"
LABEL software="mw2isa"
LABEL software.version="0.9.4"
LABEL version="0.5"

RUN apk add --no-cache --virtual git-deps git openssh \
    && git clone --depth 1 --single-branch -b develop https://github.com/ISA-tools/isatools-galaxy /files/galaxy \
    && apk del git-deps \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/* /var/tmp/*

ENV PATH=$PATH:/files/galaxy

ADD run_test1.sh /usr/local/bin/run_test1.sh
RUN chmod a+x /usr/local/bin/run_test1.sh

RUN cp /files/galaxy/tools/other/mw2isatab.py /usr/local/bin/mw2isatab.py
RUN chmod a+x /usr/local/bin/mw2isatab.py

ENTRYPOINT ["mw2isatab.py"]