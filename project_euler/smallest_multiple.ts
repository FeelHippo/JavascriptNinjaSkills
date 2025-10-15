const divisors: number[] = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11];
let counter = 2520;
while(!divisors.every(e => !(counter%e))) {
    counter += 2520;
}
console.log(counter);