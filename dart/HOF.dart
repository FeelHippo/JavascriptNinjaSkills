void main() {
  final result = noisy(bubbleOrderAscending)(<int>[3, 2, 1]);
  print(result);
}

List<int> bubbleOrderAscending(List<int> array) {
  for (var i = 0; i < array.length - 1; i++) {
    for (var k = 0; k < array.length - 1; k++) {
      if (array[k] > array[k + 1]) {
        var temp = array[k];
        array[k] = array[k + 1];
        array[k + 1] = temp;
      }
    }
  }
  return array;
}

int Function(List<int>) noisy(List<int> Function(List<int>) f) {
  int action(List<int> args) {
    List<int> result = f(args);
    return result.first;
  }

  return action;
}
