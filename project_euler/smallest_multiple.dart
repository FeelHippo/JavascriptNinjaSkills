// https://euler.beerbaronbill.com/en/latest/solutions/5.html
// expected_answer = 232792560

void main() {
  // Divisibility by the numbers 11 through 20 should be tested
  // from highest (20) to lowest (11) since higher divisors will rule more candidates out by in-divisibility
  final List<int> divisors = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11];
  // 2520 is the smallest multiple of all numbers 1 through 10
  // which means that any multiple of 2520 is also divisible by 1 through 10
  int counter = 2520;
  // break when counter is evenly divided by all divisors
  while(!divisors.every((int n) => counter % n == 0)) {
    // Any non-multiple of 2520 will not be divisible by ALL numbers 1 through 10 so can be ignored.
    counter += 2520;
  }
  print(counter); // 232792560
}