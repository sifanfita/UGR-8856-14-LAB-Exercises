fun main() {
    // Prompt the user to enter a string
    print("Enter a string: ")
    val input = readLine()

    if (input != null && input.isNotEmpty()) {
        var minChar = input[0]
        var maxChar = input[0]

        for (i in 1 until input.length) {
            val char = input[i]

            if (char < minChar) {
                minChar = char
            }

            if (char > maxChar) {
                maxChar = char
            }
        }

        println("Minimum character: $minChar")
        println("Maximum character: $maxChar")
    } else {
        println("Invalid input. Please enter a non-empty string.")
    }
}