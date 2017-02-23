# container-mw2isa

Version:0.5.0 

## Short description
a container that given an NIH Metabolomics Workbench study identifier generates an ISA-Tab document from a MWTab file.

## Description
a docker container for a microservice converting an MWTab file from NIH Metabolomics Workbench to ISA-Tab format given an identifier from that database (in the form ST\d+) and an output path. As an option, ISA syntactic validation may be invoked by providing two additional arguments: a boolean set to true to indicate validation is requested and a path to an ISA configuration.

## Functionality
- Preprocessing,Annotation

## Tool Authors
- ISA isatools@googlegroups.com

## Container Contributors
- [Philippe Rocca-Serra](https://github.com/proccaserra) (University of Oxford e-Research Centre)

## Git Repository
- https://github.com/phnmnl/container-mw2isa.git

## Installation
For local installation of the container:
```
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/container-mw2isa
```
## Future Developments
- semantic alignment
- data matrix validation


## Publications
- in preparation
