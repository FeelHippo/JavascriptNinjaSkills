fun main() {
    val divisors = listOf(20, 19, 18, 17, 16, 15, 14, 13, 12, 11);
    var counter = 2520;
    val predicate: (Int) -> Boolean = { counter % it == 0 };
    while (!divisors.all(predicate)) {
        counter += 2520;
    }
    print(counter);
}