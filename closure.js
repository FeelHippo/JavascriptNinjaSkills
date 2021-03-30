/*-- CLOSURE --*/
// When a function is defined in another function, the inner function has access to the outer function’s variables. This behavior is called lexical scoping.

function outerFunction() {
	const outerVariable = 'Hello';

	function innerFunction() { // the inner function is the 'closure'
		const innerVariable = 'Goodbye';
		console.log(outerVariable); // ==> 'Hello'
	}

	// console.log(innerVariable); // ==> Error
}

// a 'closure' is usually returned by the outer function, so as to use it later on in the code

function outerFunction() {
	const outerVariable = 'Hello';

	return function innerFunction() {
		console.log(outerVariable)
	}
}

console.log(outerFunction); // ==> () => console.log(outerVariable);

// MAIN USE of CLOSURES: private variables
// inner variables can't be accessed from outside
function private(personalSecret) {
	return {
		tellMeYourSecret() {
			console.log(personalSecret) // function 'tellMeYourSecret' has access to 'personalSecret' because they are both witin the scope of 'private'
		}
	}
}

console.log(private) // ==> { tellMeYourSecret() { console.log() } }

const mySecret = private('I have garlic for breakfast'); // create an instance of 'private' with a value that will 'live' within the function
console.log(mySecret) // ==> { tellMeYourSecret() { console.log('I have garlic for breakfast') } }

// we can now fire the inner function with the value assigned at line 39
mySecret.tellMeYourSecret()

// recommended readings, no one can explain this topic better than:
// https://css-tricks.com/javascript-scope-closures/
// https://flaviocopes.com/javascript-closures/




