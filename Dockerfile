FROM ubuntu:16.04

LABEL Description="Convert MWTab to ISA-Tab"

MAINTAINER Philippe Rocca-Serra, philippe.rocca-serra@oerc.ox.ac.uk

RUN apt-get -y update
RUN apt-get -y install --no-install-recommends python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install -U setuptools
RUN pip3 install isatools==0.3.4

# RUN  pip3 uninstall -y pip3
# RUN    apt-get purge -y python3-pip 
# RUN    apt-get install --no-install-recommends python && \
# RUN    apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD run_test1.sh /usr/local/bin/run_test1.sh

ADD run_mwtab2isa.py /

ENTRYPOINT ["python3", "run_mwtab2isa.py"]