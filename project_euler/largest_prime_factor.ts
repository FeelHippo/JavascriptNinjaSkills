const isPrime = (number: number): boolean => {
	for (let i = 2; i < number; i++) {
		if (number % i == 0) return false;
	}
	return true;
}

const isFactor = (limit: number, i: number): boolean => {
	return limit % i == 0;
}

// https://www.grae.io/post/euler_problem_3/
const largestPrimeFactorNaive = (limit: number): number => {
	let factors: number[] = [];
	for (let i = 2; i < Math.floor(Math.sqrt(limit)); i++) {
		if (isPrime(i) && isFactor(limit, i)) {
			factors = [...factors, i];
			const complementaryFactor = Math.floor(limit / i);
			if (isPrime(complementaryFactor)) {
				factors = [...factors, complementaryFactor];
			}
		}
	}
	return factors[factors.length - 1];
}

console.log(largestPrimeFactorNaive(13195));
console.log(largestPrimeFactorNaive(600851475143));
console.log(largestPrimeFactorNaive(2500));