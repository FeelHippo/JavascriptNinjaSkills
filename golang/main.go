package main

import (
	"fmt"
	"strconv"
)

// https://www.programiz.com/golang/string

func reverseString(example string) string {
	reversedString := ""
	stringLength := len(example)
	for i := 0; i < stringLength; i++ {
		reversedString = string(example[i]) + reversedString
	}
	return reversedString
}

func isPalindrome(example string) bool {
	return example == reverseString(example)
}

func bubbleSort() [6]int {
	array := [6]int{1, 7, 6, 4, 12, 9}
	arrayLength := len(array)
	for i := 0; i < arrayLength; i++ {
		for y := 0; y < arrayLength-1; y++ {
			if array[y] > array[y+1] {
				temp := array[y]
				array[y] = array[y+1]
				array[y+1] = temp
			}
		}
	}
	return array
}

func fizzBuzzHelper(n int) string {
	result := strconv.Itoa(n) + ": "
	switch true {
	case n%3 == 0 && n%5 == 0:
		result = result + "FizzBuzz"
	case n%3 == 0:
		result = result + "Fizz"
	case n%5 == 0:
		result = result + "Buzz"
	default:
		result = result + "Negative"
	}
	return result
}

func fizzBuzz(n int) {
	for i := 0; i <= n; i++ {
		fmt.Println(fizzBuzzHelper(i))
	}
}

// default values would make recursion possible but..
// https://groups.google.com/g/golang-nuts/c/5KzH_NteU9E/m/VkASJY9TEQAJ
func fibonacci(num int) []int {
	fibonacciSeries := []int{}
	for i := 0; i < num; i++ {
		switch true {
		case i < 1:
			fibonacciSeries = append(fibonacciSeries, 0)
		case i <= 2:
			fibonacciSeries = append(fibonacciSeries, 1)
		default:
			fibonacciSeries = append(fibonacciSeries, fibonacciSeries[i-1]+fibonacciSeries[i-2])
		}
	}
	return fibonacciSeries
}

func reverseArray(array []int) []int {
	reversedArray := []int{}
	for i := len(array); i > 0; i-- {
		reversedArray = append(reversedArray, array[i-1])
	}
	return reversedArray
}

func main() {
	fmt.Println(reverseString("example to demonstrate reversing of string"))
	fmt.Println(isPalindrome("abba"))
	fizzBuzz(15)
	fmt.Println(bubbleSort())
	fmt.Println(fibonacci(32))
	fmt.Println(reverseArray([]int{1, 2, 7, 6, 4, 9, 12}))
}
