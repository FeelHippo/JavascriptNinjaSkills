// https://projecteuler.net/problem=2
// https://www.geeksforgeeks.org/dsa/even-fibonacci-numbers-sum/
void main() {
	print(sumOfEvenNumbers(8, <int>[]));
	print(sumOfEvenNumbers(400, <int>[]));
	print(sumOfEvenNumbers(4000000, <int>[]));
}

int sumOfEvenNumbers(int limit, List<int> series, {int index = 0, int sumOfEven = 0}) {
	if (index == 0) {
		series.add(0);
	} else if ([1, 2].contains(index)) {
		series.add(1);
	} else {
		series.add(series[series.length - 1] + series[series.length - 2]);
		if (series.last > limit) {
			return sumOfEven;
		}
	}
	if (series.last % 2 == 0) {
		sumOfEven += series.last;
	}
	return sumOfEvenNumbers(limit, series, index: index + 1, sumOfEven: sumOfEven);
}