Class {
	#name : #BaselineOfSeasideBootstrapMagritteVoyage,
	#superclass : #BaselineOf,
	#category : #BaselineOfSeasideBootstrapMagritteVoyage
}

{ #category : #baselines }
BaselineOfSeasideBootstrapMagritteVoyage >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		self baselineForSeasideMagritteVoyage: spec ].

	spec for: #pharo do: [
		self packagesForPharo: spec ].
	
	spec group: 'default' with: #(#'Seaside-Bootstrap-Magritte-Voyage').
]

{ #category : #baselines }
BaselineOfSeasideBootstrapMagritteVoyage >> baselineForBootstrap: spec [

	spec
		baseline: 'Bootstrap4' 
		with: [ spec 
			loads: #('default');
			repository: 'github://astares/Seaside-Bootstrap4:master/src'  ]
]

{ #category : #baselines }
BaselineOfSeasideBootstrapMagritteVoyage >> baselineForSeasideMagritteVoyage: spec [

	spec
		baseline: 'SeasideMagritteVoyage' 
		with: [ spec repository: 'github://hernanmd/SeasideMagritteVoyage/src'  ]
]

{ #category : #baselines }
BaselineOfSeasideBootstrapMagritteVoyage >> packagesForPharo: spec [

	spec 
		package: #'Seaside-Bootstrap-Magritte-Voyage' 
		with: [
			spec
				requires: #('Seaside3' 'Bootstrap4' 'Magritte' 'Voyage');
				repository: 'github://hernanmd/Seaside-Bootstrap-Magritte-Voyage' ]
]