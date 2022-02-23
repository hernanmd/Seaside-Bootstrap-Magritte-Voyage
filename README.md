# Description

A meta-package for Pharo which installs latest stable releases of the following Open Source tookits and frameworks:

- [Seaside](https://github.com/SeasideSt/Seaside): The framework for developing web applications in Smalltalk.
- [Bootstrap](https://github.com/astares/Seaside-Bootstrap5): [Front-end toolkit](https://getbootstrap.com/) (Sass variables, mixins, responsive grid system and extensive prebuilt components) wrapper for Seaside (Pharo 9 and 10). 
- [Magritte](https://github.com/magritte-metamodel/magritte): A fully dynamic meta-description framework.
- [Voyage](https://github.com/pharo-nosql/voyage): An object persistence abstraction layer for Pharo. 

# Installation

```smalltalk
EpMonitor disableDuring: [ 
	Metacello new
		baseline: 'SeasideBootstrapMagritteVoyage';
		repository: 'github://hernanmd/Seaside-Bootstrap-Magritte-Voyage/src';
		onConflictUseLoaded;
		load ]
```
