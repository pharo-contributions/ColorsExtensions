Class {
	#name : #ColorChecker,
	#superclass : #Object,
	#category : #MoreColors
}

{ #category : #checking }
ColorChecker >> check [
	"self new check"

	| allNames allColors res |
	allNames := Color registeredColorNames.
	allColors := allNames collect: [ :each | Color named: each ].
	res := OrderedCollection new.
	allColors
		do: [ :aColor | 
			| aColorName |
			aColorName := Color registeredNameOf: aColor.
			allColors
				do: [ :each | 
					|  eachName |
					eachName := Color registeredNameOf: each.
					eachName = aColorName
						ifFalse: [ (aColor diff: each) isZero
								ifTrue: [ res
										add:
											{aColorName.
											eachName} ] ] ] ].
	^ res
]
