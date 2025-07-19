fun main() {
    print(sumOfEvenNumbers(8, mutableListOf<Int>()))
    print(sumOfEvenNumbers(400, mutableListOf<Int>()))
    print(sumOfEvenNumbers(4000000, mutableListOf<Int>()))
}

fun sumOfEvenNumbers(limit: Int, series: MutableList<Int>, index: Int = 0, sumOfEven: Int = 0): Int {
    var lastElement: Int = 0
    if (index == 0) {
        series.add(0)
    } else if (intArrayOf(1, 2).contains(index)) {
        series.add(1);
    } else {
        lastElement = series[series.size - 1] + series[series.size - 2]
        series.add(lastElement)
        if (lastElement > limit) return sumOfEven
    }
    var currentSumOfEven = sumOfEven
    if (lastElement % 2 == 0) {
        currentSumOfEven += lastElement
    }
    return sumOfEvenNumbers(limit, series, index + 1, currentSumOfEven)
}