fun main() {
    val number1 = readLine()?.toDoubleOrNull()
    val number2 = readLine()?.toDoubleOrNull()
    val operation = readLine()

    if (number1 == null || number2 == null || operation == null) {
        println("Invalid input")
        return
    }

    val result = when (operation) {
        "addition" -> number1 + number2
        "subtraction" -> number1 - number2
        "multiplication" -> number1 * number2
        "division" -> number1 / number2
        else -> throw IllegalArgumentException("Invalid operation")
    }

    println("Result: $result")
}