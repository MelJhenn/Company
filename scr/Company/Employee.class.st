Class {
	#name : #Employee,
	#superclass : #Object,
	#instVars : [
		'first',
		'last',
		'email',
		'pay',
		'raiseAmt'
	],
	#category : #Company
}

{ #category : #'as yet unclassified' }
Employee class >> newFirst: aString last: aString2 pay: aString3 [ 
	|employee |
	employee:= self new.
	employee
		first: aString; 
		last: aString2 ;
		email: aString, '.', aString2, '@gmail.com';
		pay: aString3.
	^employee 
]

{ #category : #'as yet unclassified' }
Employee >> applyRaise [
	pay:= pay*raiseAmt. 
]

{ #category : #accessing }
Employee >> email [
	^ email
]

{ #category : #accessing }
Employee >> email: anObject [
	email := anObject
]

{ #category : #accessing }
Employee >> first [
	^ first
]

{ #category : #accessing }
Employee >> first: anObject [
	first := anObject
]

{ #category : #'as yet unclassified' }
Employee >> fullName [
	^first,' ' ,last.
]

{ #category : #initialization }
Employee >> initialize [ 
	super initialize.
	raiseAmt := 1.04.
]

{ #category : #accessing }
Employee >> last [
	^ last
]

{ #category : #accessing }
Employee >> last: anObject [
	last := anObject
]

{ #category : #accessing }
Employee >> pay [
	^ pay
]

{ #category : #accessing }
Employee >> pay: anObject [
	pay := anObject
]
