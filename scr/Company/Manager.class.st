Class {
	#name : #Manager,
	#superclass : #Employee,
	#instVars : [
		'developers'
	],
	#category : #Company
}

{ #category : #'as yet unclassified' }
Manager >> addDeveloper: aDeveloper [ 
	developers add: aDeveloper.
]

{ #category : #initialization }
Manager >> initialize [
	super initialize.
	developers:= OrderedCollection new.
	
]

{ #category : #'as yet unclassified' }
Manager >> numberOfDevelopers [
	^developers size.
]
