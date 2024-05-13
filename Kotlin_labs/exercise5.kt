fun analyzeString(input: String): Triple<Int, Int, Int> {
    val words = input.split("\\s+".toRegex()).filter { it.isNotBlank() }
    val wordCount = words.size
    val uppercaseCount = input.count { it.isUpperCase() }
    val vowelCount = input.count { it.toLowerCase() in "aeiou" }

    return Triple(wordCount, uppercaseCount, vowelCount)
}

fun main() {
    // Prompt the user to enter a string
    print("Enter a string: ")
    val input = readLine()

    if (input != null) {
        val (wordCount, uppercaseCount, vowelCount) = analyzeString(input)
        println("Number of words: $wordCount")
        println("Number of uppercase letters: $uppercaseCount")
        println("Number of vowels: $vowelCount")
    }
}