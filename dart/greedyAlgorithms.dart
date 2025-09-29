// Greedy algorithms are a class of algorithms that make locally optimal choices at each step with the hope of finding a global optimum solution.
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

  // Assign Cookies
  // Given two arrays, greed[] and cookie[] such
  // that greed[i] denotes the minimum cookie size wanted by ith child
  // and cookie[i] denotes the size of ith cookie,
  // the task is to find the maximum number of children that can be satisfied by assigning them cookies, 
  // with each child getting at most 1 cookie.
  // The idea is to use Greedy Algorithm to assign smallest cookie to each child such that the child gets satisfied. 
  // So, we can sort both greed[] and cookie[] array and start assigning the smallest cookies to the children with smallest greed. 
  // We can initialize two pointers, say i and j to the beginning of greed[] and cookie[] respectively. 
  // Now, we can have 2 cases
  //   - If greed[i] <= cookie[j], this means that we can satisfy the ith child by assigning him jth cookie.
  //     So, we increase the count of satisfied children by 1 and increment both the pointers to move to the next child and cookie.
  //   - If greed[i] > cookie[j], this means that we cannot satisfy the ith child by assigning him jth cookie as he wants a bigger cookie.
  //     So, increment j to move to the next bigger cookie.
  int maxChildren(List<int> greed, List<int> cookie) {
    greed.sort();
    cookie.sort();

    // Initialize pointers
    int i = 0, j = 0, satisfiedChildren = 0;
    
    // Iterate until we reach the end of either array
    while (i < greed.length && j < cookie.length) {
      // If ith child can be satisfied with jth cookie,
      // assign it to him and increment the count
      if (greed[i] <= cookie[j]) {
        satisfiedChildren++;
        i++;
        j++;
      } else {
        // If ith child cannot be satisfied with jth 
        // cookie, move to the next bigger cookie
        j++;
      }
    }
    return satisfiedChildren;
  }
  print(maxChildren([1, 2, 3, 2, 1, 2, 3, 4], [1, 1, 6, 3, 1, 6]));
}