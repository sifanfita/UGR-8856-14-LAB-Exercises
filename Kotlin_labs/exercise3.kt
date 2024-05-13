fun main() {
    // Prompt the user to enter the numeric grade
    print("Enter the numeric grade: ")
    val numericGrade = readLine()?.toIntOrNull()

    // Check if the input is valid
    if (numericGrade != null && numericGrade in 0..100) {
        // Assign the letter grade based on the numeric grade
        val letterGrade = when (numericGrade) {
            in 90..100 -> "A"
            in 80..89 -> "B"
            in 70..79 -> "C"
            in 60..69 -> "D"
            else -> "F"
        }

        // Print the letter grade
        println("The corresponding letter grade is: $letterGrade")
    } else {
        println("Invalid input. Please enter a numeric grade between 0 and 100.")
    }
}