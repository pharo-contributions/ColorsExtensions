Class {
	#name : #BaselineOfColorsExtensions,
	#superclass : #BaselineOf,
	#category : #BaselineOfColorsExtensions
}

{ #category : #baselines }
BaselineOfColorsExtensions >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: 'MoreColors' ]
]

{ #category : #accessing }
BaselineOfColorsExtensions >> projectClass [
	^ MetacelloCypressBaselineProject
]
