FROM python:3-onbuild
LABEL Description="Convert MWTab to ISA-Tab"
MAINTAINER Philippe Rocca-Serra, philippe.rocca-serra@oerc.ox.ac.uk
RUN pip install isatools
ADD run_mwtab2isa.py /
ADD requirements.txt /
ENTRYPOINT ["python", "run_mwtab2isa.py"]