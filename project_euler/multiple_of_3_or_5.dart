// https://projecteuler.net/problem=1
// https://math.stackexchange.com/a/9305
void main() {
	final growableList = List<int>.generate(999, (int index) => index + 1);
	final List<int> memo = [];
	final allMultiples = multiplesOfThreeOrFive(growableList, memo);
	int sum = 0;
	for (var num in allMultiples) {
		sum += num;
	}
	print(sum);
}

List<int> multiplesOfThreeOrFive(List<int> remainingNumbers, List<int> memo) {
	if (remainingNumbers.length == 0) return memo;
	final lastElement = remainingNumbers.removeLast();
	if (!memo.contains(lastElement) && (lastElement % 3 == 0 || lastElement % 5 == 0)) {
		memo.add(lastElement);
	}
	return multiplesOfThreeOrFive(remainingNumbers, memo);
}