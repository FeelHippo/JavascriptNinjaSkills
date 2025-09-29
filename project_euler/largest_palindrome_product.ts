// https://projecteuler.net/problem=4
// ts-node not working on Garuda, try `tsc largest_palindrome_product.ts && node largest_palindrome_product.js`

const LOWER_LIMIT = 100;
const UPPER_LIMIT = 999;

function main() {
    let result = 0;
    let milliStart = new Date().getMilliseconds();
    for(let i = UPPER_LIMIT; i >= LOWER_LIMIT; i--) {
        for(let j = UPPER_LIMIT; j >= LOWER_LIMIT; j--) {
            const current = i * j;
            if (current > result && isPalindrome(current)) {
                result = current;
            }
        }
    }
    let milliEnd = new Date().getMilliseconds();
    console.log(`~~~ Result: ${result} in ${milliEnd - milliStart} ms`);
}

function isPalindrome(num: number) {
    const str = num.toString();
    return str === reverseString(str);
}

function reverseString(str: string) {
    let reversedString = '';
    const stringLength = str.length;
    for (let i = 0; i < stringLength; i++) {
        reversedString = str.charAt(i) + reversedString;
    }
    return reversedString;
}

main();