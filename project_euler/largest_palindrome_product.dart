// https://projecteuler.net/problem=4

const LOWER_LIMIT = 100;
const UPPER_LIMIT = 999;

void main() {
  int result = 0;
  int milliStart = DateTime.now().millisecondsSinceEpoch;
  for(int i = UPPER_LIMIT; i >= LOWER_LIMIT; i--) {
    for(int j = UPPER_LIMIT; j >= LOWER_LIMIT; j--) {
      int current = i * j;
      if (current > result && isPalindrome(current)) {
        result = current;
      }
    }
  }
  int milliEnd = DateTime.now().millisecondsSinceEpoch;
  print('~~~ Result: ${result} in ${milliEnd - milliStart} ms');
}

bool isPalindrome(int num) {
  String str = num.toString();
  return str == reverseString(str);
}

String reverseString(String str) {
  var reversedString = '';
  var splitString = str.split('');
  while (splitString.isNotEmpty) {
    reversedString = splitString.removeAt(0) + reversedString;
  }
  return reversedString;
}