fun transformToUppercase(strings: List<String>): List<String> {
    return strings.map { it.toUpperCase() }
}

fun filterGreaterThan(numbers: List<Int>, value: Int): List<Int> {
    return numbers.filter { it > value }
}

fun calculateSum(numbers: List<Int>): Int {
    return numbers.reduce { acc, num -> acc + num }
}

fun main() {
    // Prompt the user to enter a list of strings
    println("Enter a list of strings, separated by commas:")
    val stringInput = readLine()
    val stringList = stringInput?.split(",") ?: emptyList()

    // Prompt the user to enter a value for filtering
    println("Enter a value for filtering:")
    val valueInput = readLine()
    val value = valueInput?.toIntOrNull() ?: 0

    val uppercaseList = transformToUppercase(stringList)
    println("Uppercase List: $uppercaseList")

    val numberList = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    val filteredList = filterGreaterThan(numberList, value)
    println("Filtered List: $filteredList")

    val sum = calculateSum(numberList)
    println("Sum: $sum")
}