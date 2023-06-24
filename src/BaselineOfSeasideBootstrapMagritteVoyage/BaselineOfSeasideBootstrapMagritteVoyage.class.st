Class {
	#name : #BaselineOfSeasideBootstrapMagritteVoyage,
	#superclass : #BaselineOf,
	#category : #BaselineOfSeasideBootstrapMagritteVoyage
}

{ #category : #baselines }
BaselineOfSeasideBootstrapMagritteVoyage >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		self 
			baselineForBootstrap: spec;
			baselineForSeasideMagritteVoyage: spec ].

	spec for: #pharo do: [
		self packagesForPharo: spec ].
	
	spec group: 'default' with: #(#'Seaside-Bootstrap-Magritte-Voyage').
]

{ #category : #baselines }
BaselineOfSeasideBootstrapMagritteVoyage >> baselineForBootstrap: spec [

	spec
		baseline: 'Bootstrap5' 
		with: [ 
			spec 
				loads: #('default');
				repository: 'github://astares/Seaside-Bootstrap5:master/src'  ]
]

{ #category : #baselines }
BaselineOfSeasideBootstrapMagritteVoyage >> baselineForSeasideMagritteVoyage: spec [

	spec
		baseline: 'SeasideMagritteVoyage' 
		with: [ spec 
			loads: #('default');
			repository: 'github://hernanmd/Seaside-Magritte-Voyage/src'  ]
]

{ #category : #baselines }
BaselineOfSeasideBootstrapMagritteVoyage >> packagesForPharo: spec [

	spec 
		package: #'Seaside-Bootstrap-Magritte-Voyage' 
		with: [
			spec
				requires: #('Bootstrap5' 'SeasideMagritteVoyage');
				repository: 'github://hernanmd/Seaside-Bootstrap-Magritte-Voyage' ]
]
