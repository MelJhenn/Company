Class {
	#name : #Developer,
	#superclass : #Employee,
	#instVars : [
		'language'
	],
	#category : #Company
}

{ #category : #initialization }
Developer >> initialize [ 
	super initialize.
	raiseAmt := 1.10.
]

{ #category : #accessing }
Developer >> language [
	^ language
]

{ #category : #accessing }
Developer >> language: anObject [
	language := anObject
]
