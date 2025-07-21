import 'dart:math';

// https://projecteuler.net/problem=3
// https://www.geeksforgeeks.org/dsa/find-largest-prime-factor-number/
// https://www.grae.io/post/euler_problem_3/
void main() {
	print(largestPrimeFactor(13195));
	print(largestPrimeFactor(600851475143));
	print(largestPrimeFactor(100));
	print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
	print(largestPrimeFactorNaive(13195));
	print(largestPrimeFactorNaive(600851475143));
	print(largestPrimeFactorNaive(100));
	print('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
	final List<int> memo = [];
	print(largestPrimeFactorNaiveRecursive(13195, memo: memo));
	print(largestPrimeFactorNaiveRecursive(600851475143, memo: memo)); // Unhandled exception: Stack Overflow
	print(largestPrimeFactorNaiveRecursive(100, memo: memo));
}

// https://www.geeksforgeeks.org/dsa/find-largest-prime-factor-number/
int largestPrimeFactor(int limit) {
	// default value
	late int largestPrime;

	// remove all factors of 2, since 2 is the only even prime
	// this reduces the limit to its highest possible odd factor
	// e.g. 100 => 50 => 25
	while(limit % 2 == 0) {
		// as far as we know, 2 is the largest prime factor so far...
		largestPrime = 2;
		// reduce by half
		limit = (limit / 2).toInt();
	}

	// check for odd factors starting from 3, since 2 is removed above
	// process continues for all odd numbers up to √n.
	for (var i = 3; i * i < limit; i += 2) {
		print('i: $i -- i * i: ${i * i} -- limit: $limit');
		// while i is a factor, keep dividing limit by it
		while (limit % i == 0) {
			print('$limit % $i == 0 => largestPrime: $i -- new limit: ${(limit / i).toInt()}');
			largestPrime = i;
			limit = (limit / i).toInt();
		} 
	}

	// if limit is still greater than 2, it is a prime number
	if (limit > 2) largestPrime = limit;

	return largestPrime;
}

bool isPrime(int number) {
	for (var i = 2; i < number; i++) {
		if (number % i == 0) return false;
	}
	return true;
}

// https://www.grae.io/post/euler_problem_3/
int largestPrimeFactorNaive(int limit) {
	List<int> factors = <int>[];
	for (var i = 2; i < (sqrt(limit).floor()); i++) {
		if (
			isPrime(i) &&
			(limit % i == 0) // "i" is a factor
		) {
			// e.g. 2500 / == 1250
			// means that both numbers (pair) are factors: 2 AND 1250
			final pair = (limit / i).toInt();
			// "i" is prime, see isPrime(i)
			factors.add(i);
			// the paired factor might be prime as well
			if (isPrime(pair)) factors.add(pair);
		}
	}
	return factors.last;
}

int largestPrimeFactorNaiveRecursive(int limit, { required List<int> memo, int i = 2 }) {
	if (i == (sqrt(limit).floor())) return memo.last;
	if (
		isPrime(i) &&
		(limit % i == 0) &&
		!memo.contains(i)
	) {
		final pair = (limit / i).toInt();
		memo.add(i);
		if (!memo.contains(pair) && isPrime(pair)) memo.add(pair);
	}
	return largestPrimeFactorNaiveRecursive(limit, memo: memo, i: i + 1);
}