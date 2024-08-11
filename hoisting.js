// Hoisting
// Hoisting is a concept that enables us to extract values of variables and functions
// even before initializing/assigning value without getting errors 
// and this happens during the 1st phase (memory creation phase) of the Execution Context.
// In terms of variables and constants, keyword var is hoisted and let and const do not allow hoisting
function codeHoist(){
    b = 10;
    let c = 50;
}
codeHoist();

// classic hoisting example
a = console.info;
console.log(a('hoisted')); // 'hoisted'
var a;

console.log('~~~ 1', b); // 10
console.log('~~~ 2', c); // ReferenceError : b is not defined
console.log('~~~ 3', d); // undefined

var d = 'hoisted';
