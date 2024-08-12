void main() {
  String reverseString(String example) {
    var reversedString = '';
    var splitString = example.split('');
    while (splitString.isNotEmpty) {
      reversedString = splitString.removeAt(0) + reversedString;
    }
    return reversedString;
  }
  print(reverseString('example to demonstrate reversing of string'));
  bool isPalindrome(String example) {
    return example == reverseString(example);
  }
  print(isPalindrome('abcdefedcba'));
  String fizzBuzz(int challenge) {
    if (((challenge % 3) + (challenge % 5)) == 0) {
      return 'FizzBuzz';
    } else if ((challenge % 3) == 0) {
      return 'Fizz';
    } else if ((challenge % 5) == 0) {
      return 'Buzz';
    }
    return challenge.toString();
  }
  print(fizzBuzz(15));
  print(fizzBuzz(9));
  print(fizzBuzz(10));
  print(fizzBuzz(11));
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
  print(bubbleOrderAscending([1, 2, 7, 6, 4, 9, 12]));
  List<int> bubbleOrderDescending(List<int> array) {
    for (var i = 0; i < array.length - 1; i++) {
        for (var k = 0; k < array.length - 1; k++) {
            if (array[k] < array[k + 1]) {
                var temp = array[k];
                array[k] = array[k + 1];
                array[k + 1] = temp;
            }
        }
    }
    return array;
  }
  print(bubbleOrderDescending([1, 2, 7, 6, 4, 9, 12]));
  List<int> reverseArray(List<int> array) {
    List<int> reversedArray = [];
    while (array.isNotEmpty) {
      reversedArray.add(array.removeAt(array.length - 1));
    }
    return reversedArray;
  }
  print(reverseArray([1, 2, 7, 6, 4, 9, 12]));
}