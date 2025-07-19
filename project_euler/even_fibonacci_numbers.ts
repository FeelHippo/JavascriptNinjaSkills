const sumOfEvenNumbers = (limit: number, series: number[] = [], index = 0, sumOfEven = 0): number => {
	if (index < 1) series.push(0) 
	else if (index <= 2) series.push(1) 
	else {
		const nextNumberInSeries = series[series.length - 1] + series[series.length - 2]
		series.push(nextNumberInSeries)
		if (nextNumberInSeries > limit) {
			return sumOfEven
		}
	}
	if (!(series[series.length - 1] % 2)) sumOfEven += series[series.length - 1]
	return sumOfEvenNumbers(limit, series, index + 1, sumOfEven)
}

console.log(sumOfEvenNumbers(8))
console.log(sumOfEvenNumbers(400))
console.log(sumOfEvenNumbers(4000000))