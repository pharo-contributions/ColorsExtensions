Class {
	#name : 'BaselineOfColorsExtensions',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfColorsExtensions',
	#package : 'BaselineOfColorsExtensions'
}

{ #category : 'baselines' }
BaselineOfColorsExtensions >> baseline: spec [
	<baseline>
	
	spec for: #common do: [ 
		spec postLoadDoIt: #postLoadColors.
		spec package: 'MoreColors' ]
]

{ #category : 'accessing' }
BaselineOfColorsExtensions >> postLoadColors [

	Color initializeNames
]

{ #category : 'accessing' }
BaselineOfColorsExtensions >> projectClass [
	^ MetacelloCypressBaselineProject
]
