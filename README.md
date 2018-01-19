# container-mw2isa

Version:0.9.4

## Short description
A container that given an NIH Metabolomics Workbench study identifier generates an ISA-Tab document from a MWTab file.

## Description
A docker container for a microservice converting an MWTab file from NIH Metabolomics Workbench to ISA-Tab format given an identifier from that database (in the form ST\d+) and an output path. As an option, ISA syntactic validation may be invoked by providing two additional arguments: a boolean set to true to indicate validation is requested and a path to an ISA configuration.

## Key features

- Create ISA-Tab metadata from experimental design parameters.

## Functionality

- Data Management / Study Dataset Download
- Data Management / Study Metadata Format Conversion

## Approaches

- Metabolomics
- Isotopic Labelling Analysis

## Instrument Data Types

- MS
- NMR

## Tool Authors
- [ISA Team](http://isa-tools.org)

## Container Contributors
- [Philippe Rocca-Serra](https://github.com/proccaserra) (University of Oxford)
- [David Johnson](https://github.com/djcomlab) (University of Oxford)

## Git Repository
- https://github.com/phnmnl/container-mw2isa.git

## Installation

mw2isa is present on all PhenoMeNal Galaxy instances on deployed Cloud Research Environments, under the ISA tools category in the tool bar to the left of the screen. No installation is needed hence on PhenoMeNal Cloud Research Environments.

For local installation of the container:
```
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/container-mw2isa
```

## Usage Instructions

On a PhenoMeNal Cloud Research Environment Galaxy environment, go to ISA tools tool category, and then click on mw2isa, and  fill the `Metabolomics Workbench Study Identifier` field (the format should be in the following pattern `ST\d6+` as in `ST000110`) then press Run.
 
From docker:

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/container-mw2isa <MW_STUDY_ID>
```

e.g.

```bash
docker run docker-registry.phenomenal-h2020.eu/phnmnl/container-mw2isa ST000110
```

## Future Developments
- semantic alignment
- data matrix validation

## Publications
- Sansone, Susanna-Assunta, Rocca-Serra, Philippe, Gonzalez-Beltran, Alejandra, Johnson, David, & ISA Community. (2016, October 28). ISA Model and Serialization Specifications 1.0. Zenodo. http://doi.org/10.5281/zenodo.163640
- Sud, Manish and Fahy, Eoin and Cotter, Dawn and Azam, Kenan and Vadivelu, Ilango and Burant, Charles and Edison, Arthur and Fiehn, Oliver and Higashi, Richard and Nair, K. Sreekumaran and et al. (2015). Metabolomics Workbench: An international repository for metabolomics data and metadata, metabolite standards, protocols, tutorials and training, and analysis tools. In Nucleic Acids Research, 44 (D1), pp. D463–D470. 