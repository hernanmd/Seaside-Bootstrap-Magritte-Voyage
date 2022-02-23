# Description

A meta-package for Pharo which installs latest stable releases of the following Open Source tookits and frameworks:

- Seaside: The framework for developing web applications in Smalltalk.
- Bootstrap: Front-end toolkit (Sass variables, mixins, responsive grid system and extensive prebuilt components) wrapper for Seaside (Pharo 9 and 10). 
- Magritte: A fully dynamic meta-description framework.
- Voyage: An object persistence abstraction layer for Pharo. 

# Installation

```smalltalk
EpMonitor disableDuring: [ 
	Metacello new
		baseline: 'SeasideBootstrapMagritteVoyage';
		repository: 'github://hernanmd/Seaside-Bootstrap-Magritte-Voyage/src';
		onConflictUseLoaded;
		load ]
```
