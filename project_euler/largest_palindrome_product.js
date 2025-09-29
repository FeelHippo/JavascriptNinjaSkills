// https://projecteuler.net/problem=4
var LOWER_LIMIT = 100;
var UPPER_LIMIT = 999;
function main() {
    var result = 0;
    var milliStart = new Date().getMilliseconds();
    for (var i = UPPER_LIMIT; i >= LOWER_LIMIT; i--) {
        for (var j = UPPER_LIMIT; j >= LOWER_LIMIT; j--) {
            var current = i * j;
            if (current > result && isPalindrome(current)) {
                result = current;
            }
        }
    }
    var milliEnd = new Date().getMilliseconds();
    console.log("~~~ Result: ".concat(result, " in ").concat(milliEnd - milliStart, " ms"));
}
function isPalindrome(num) {
    var str = num.toString();
    return str === reverseString(str);
}
function reverseString(str) {
    var reversedString = '';
    var stringLength = str.length;
    for (var i = 0; i < stringLength; i++) {
        reversedString = str.charAt(i) + reversedString;
    }
    return reversedString;
}
main();
