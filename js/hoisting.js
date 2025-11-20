// Hoisting
// Hoisting is a concept that enables us to extract values of variables and functions
// even before initializing/assigning value without getting errors 
// and this happens during the 1st phase (memory creation phase) of the Execution Context.
// https://www.freecodecamp.org/news/how-javascript-works-behind-the-scene-javascript-execution-context/
// In terms of variables and constants, keyword var is hoisted and let and const do not allow hoisting
function codeHoist(){
    b = 10;
    let c = 50;
}
codeHoist();

// classic hoisting example
a = console.info;
a('hoisted'); // 'hoisted'
var a; // declaration of var, after execution

console.log('~~~ 1', b); // 10
console.log('~~~ 2', d); // undefined, because 'd' is assigned a value at a later stage
console.log('~~~ 3', c); // ReferenceError: c is not defined || it's scoped inside of codeHoist()

var d = 'hoisted';
