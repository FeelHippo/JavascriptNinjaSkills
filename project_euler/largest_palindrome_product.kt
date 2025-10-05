fun main() {
    val lowerLimit = 100;
    val upperLimit = 999;
    var result: Int = 0;
    val milliStart: Long = System.currentTimeMillis();
    for (i in lowerLimit..upperLimit) {
        for (j in lowerLimit..upperLimit) {
            val current: Int = i * j;
            if (current > result && isPalindrome(current)) {
                result = current;
            }
        }
    }
    val milliEnd: Long = System.currentTimeMillis();
    println(result);
    println(milliEnd - milliStart);
}

fun isPalindrome(num: Int): Boolean {
    val str: String = num.toString();
    return str == reverseString(str);
}

fun reverseString(str: String): String {
    var reversedString: String = "";
    val splitString = str.split("").toMutableList();
    while (splitString.isNotEmpty()) {
        reversedString = splitString.removeAt(0) + reversedString;
    }
    return reversedString;
}