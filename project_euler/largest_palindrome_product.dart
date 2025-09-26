// https://projecteuler.net/problem=4
void main() {
  const int start = 999;
  int left, right;
  left = right = start;
  final List<int> memo = [];
  int milliStart = DateTime.now().millisecondsSinceEpoch;
  int result = listAllPalindromes(left, right, memo);
  int milliEnd = DateTime.now().millisecondsSinceEpoch;
  print('~~~ Result: ${result}');
  print('~~~ Milliseconds: ${milliEnd - milliStart}');
}

int listAllPalindromes(int left, int right, memo) {
  if (left == 899) {
    memo.sort();
    return memo.last;
  }
  int current = left * right;
  if (!memo.contains(current) && isPalindrome(current)) {
    memo.add(current);
  }
  if (right > 899) {
    return listAllPalindromes(left, right - 2, memo);
  }
  return listAllPalindromes(left - 2, 999, memo);

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