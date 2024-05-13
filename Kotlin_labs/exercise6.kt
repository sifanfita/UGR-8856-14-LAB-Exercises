fun findMax(numbers: List<Int>): Int? {
    return numbers.maxOrNull()
}

fun filterEvenNumbers(numbers: List<Int>): List<Int> {
    return numbers.filter { it % 2 == 0 }
}

fun calculateAverage(numbers: List<Double>): Double? {
    if (numbers.isEmpty()) {
        return null
    }
    val sum = numbers.sum()
    return sum / numbers.size
}

fun main() {
    // Prompt the user to enter a list of numbers
    println("Enter a list of numbers, separated by commas:")
    val input = readLine()
    
    if (input != null) {
        val numbers = input.split(",").mapNotNull { it.trim().toIntOrNull() }
        
        val maxNumber = findMax(numbers)
        println("Maximum number: $maxNumber")

        val evenNumbers = filterEvenNumbers(numbers)
        println("Even numbers: $evenNumbers")

        val average = calculateAverage(numbers.map { it.toDouble() })
        println("Average: $average")
    }
}