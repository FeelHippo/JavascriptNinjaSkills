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
  
  // You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer.
  // The digits are ordered from most significant to least significant in left-to-right order.
  // The large integer does not contain any leading 0's.
  // [7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6]
  // [9,9,9]
  List<int>? plusOne(List<int> digits) {
    final int length = digits.length;
    if (length == 0) {
      return null;
    }
    // carry by default, otherwise sum is complete
    bool isCarrying = true;

    for (var i = length - 1; i >= 0; i--) {
      if (!isCarrying) break;
      // if we are carrying, we need to add one to the least significant digit
      // e.g [8, 9] => yes we are carrying => 9 + 1 == 10 => [8 (carrying 1), 0]
      int value  = digits[i] + 1;
      isCarrying = value >= 10; // we could do with "value == 10" here but OK
      if (isCarrying) {
        value = value % 10;
      }
      digits[i] = value;
    }

    if (isCarrying) {
      digits.insert(0, 1);
    }

    return digits;
  }
  print(plusOne([7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6]));
  print(plusOne([9,9,9]));
  print(plusOne([]));

  String addBinary(String a, String b) {
    // add padding to shortest addend, to facilitate for loop
    if (a.length < b.length) {
        a = ('0' * (b.length - a.length)) + a;
    }
    if (b.length < a.length) {
        b = ('0' * (a.length - b.length)) + b;
    }
    bool isCarrying = false;
    String result = '';
    for (int i = a.length - 1; i >= 0; i--) {
        // both addends == 0
        if (a[i] == '0' && b[i] == '0') {
            // 0 + 0 (carry 1) => 1
            // 0 + 0 (no carry) => 0
            result = (isCarrying ? '1' : '0') + result;
            isCarrying = false;
        // either addend == 0, the other == 1
        } else if (a[i] != b[i]) {
            // 1 + 0 (carry 1) => 0 => carry 1
            // 1 + 0 (no carry) => 1 => no carry
            result = (isCarrying ? '0' : '1') + result;
        // both addends == 1
        } else {
            result = (isCarrying ? '1' : '0') + result;
            isCarrying = true;
        }
    }
    return isCarrying ? '1' + result : result;
  }
  print(addBinary('11', '1'));
  print(addBinary('101001110101', '101'));
  print(addBinary('101', '101001110101'));
}