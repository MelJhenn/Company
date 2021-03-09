"
An EmployeeTest is a test class for testing the behavior of Employee
"
Class {
	#name : #EmployeeTest,
	#superclass : #TestCase,
	#category : #'Company-Tests'
}

{ #category : #tests }
EmployeeTest >> testBasic [
	|employee1 employee2|
	employee1 := Developer new.
	employee1 
		first: 'Milton'; 
		last: 'Mamani';
		email: 'milton@gmail.com';
		language: 'smallTalk';
		pay: 5000;
		applyRaise.
	employee2 := Manager newFirst: 'Melissa' last: 'Toco' pay: 7000.
	employee2 applyRaise.
	self assert: employee1 fullName equals: 'Milton Mamani'.
	self assert: employee2 fullName equals: 'Melissa Toco'.
	self assert: employee2 numberOfDevelopers equals: 0.
	employee2 addDeveloper: employee1.
	self assert: employee2 numberOfDevelopers equals: 1.
	self assert: (employee1 isKindOf: Employee).
	self assert: (employee1 isKindOf: Developer).
	self deny: (employee1 isKindOf: Manager).
	self deny: (employee2 isKindOf: Developer).
	self assert: (employee2 isKindOf: Manager).
	
]
