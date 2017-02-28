FROM ubuntu:16.04

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL Description="Convert MWTab to ISA-Tab"
LABEL software="mw2isa"
LABEL software.version="0.5.0"
LABEL version="0.1"

<<<<<<< HEAD
RUN apt-get -y update
RUN apt-get -y install --no-install-recommends python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -U setuptools
RUN pip3 install isatools==0.4.0

# RUN  pip3 uninstall -y pip3
# RUN  apt-get purge -y python3-pip 
# RUN  apt-get install --no-install-recommends python && \
# RUN  apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
=======

RUN apt-get -y update && apt-get -y install --no-install-recommends python3-pip libxml2-dev libxslt-dev gcc python3-lxml && \
    pip3 install --upgrade pip && \
    pip3 install -U setuptools && \
    pip3 install isatools==0.5.0 && \
    apt-get purge -y python3-pip gcc libxml2-dev libxslt-dev python3-lxml && \
    apt-get install --no-install-recommends python3 && \
    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
>>>>>>> develop

ADD run_test1.sh /usr/local/bin/run_test1.sh
RUN chmod a+x /usr/local/bin/run_test1.sh

ADD run_mwtab2isa.py /usr/local/bin/
RUN chmod a+x /usr/local/bin/run_mwtab2isa.py

ENTRYPOINT ["run_mwtab2isa.py"]
