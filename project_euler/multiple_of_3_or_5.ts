// https://projecteuler.net/problem=1
// https://math.stackexchange.com/a/9305
const numbers = [...Array(999)].map((_, index) => index + 1);

const multiplesOfThreeOrFive = (numbers: number[], memo: number[] = []): number[] => {
	if (!numbers.length) return memo;
	const current = numbers.shift() as number;
	if (!memo.includes(current) && (!(current % 3) || !(current % 5))) {
		return multiplesOfThreeOrFive(numbers, [current, ...memo]);
	}
	return multiplesOfThreeOrFive(numbers, memo);
}

const allMultiples = multiplesOfThreeOrFive(numbers);
const result = allMultiples.reduce((acc: number, curr: number) => acc + curr, 0);
console.log(result);