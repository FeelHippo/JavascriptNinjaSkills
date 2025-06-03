void main() {
  // Fractional Knapsack Problem
  // Given two arrays, val[] and wt[], representing the values and weights of items,
  // and an integer capacity representing the maximum weight a knapsack can hold, 
  // the task is to determine the maximum total value that can be achieved by putting items in the knapsack. 
  // You are allowed to break items into fractions if necessary.
  // Input: val[] = [60, 100, 120], wt[] = [10, 20, 30], capacity = 50
  // Output: 240 
  // Explanation: By taking items of weight 10 and 20 kg and 2/3 fraction of 30 kg. 
  // Hence total price will be 60+100+(2/3)(120) = 240
  double fractionalKnapsack(List<int> val, List<int> wt, int capacity) {
    final Map<int, int> weightToValue = {};
    for (int i = 0; i < val.length; i++) {
      final int value = val[i];
      final int weight = wt[i];
      weightToValue[weight] = value;
    }



    double result = 0;
    var currentCapacity = capacity;
    for (
      final entry
      in weightToValue
        .entries
        .toList() // Sort items based on value-to-weight ratio in descending order
          ..sort((a, b) => (b.value / b.key).compareTo(a.value / a.key))) {
      if (entry.key <= currentCapacity) {
        result += entry.value;
        currentCapacity = currentCapacity - entry.key;
      } else {
        // e.g entry.key == 10 and currentCapacity == 5; entry.value == 100
        // 10 : 100 = 5 : x => (100 * 5) / 10 == 50
        result += ((entry.value * currentCapacity) / entry.key);
        break;
      }
    }
    return result;
  }
  print(fractionalKnapsack([60, 100, 120], [10, 20, 30], 50)); // sorted
  print(fractionalKnapsack([120, 100, 60], [30, 20, 10], 50)); // unsorted
  print(fractionalKnapsack([500], [30], 10));
}