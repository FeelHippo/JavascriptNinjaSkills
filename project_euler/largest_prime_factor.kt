import kotlin.math.floor
import kotlin.math.sqrt

fun main() {
    print(largestPrimeFactorNaive(13195))
    print(largestPrimeFactorNaive(600851475143))
    print(largestPrimeFactorNaive(2500))
}

fun isPrime(number: Int): Boolean {
    for (i in 2..<number) {
        if (number % i == 0) return false
    }
    return true
}

fun isFactor(limit: Long, i: Int): Boolean {
    return  (limit % i).toInt() == 0
}

fun largestPrimeFactorNaive(limit: Long): Int {
    val factors = mutableListOf<Int>();
    val squareRootOfLimit = (floor(sqrt(limit.toDouble())) - 2).toInt()
    for (i in 2..<squareRootOfLimit) {
        if (isPrime(i) && isFactor(limit, i)) {
            factors.add(i);
            val complementaryFactor = floor((limit / i).toDouble()).toInt();
            if (isPrime(complementaryFactor)) factors.add(complementaryFactor)
        }
    }
    return factors.removeLast()
}