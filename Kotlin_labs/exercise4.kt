fun main() {
    // Declare variables
    var originalPrice = 0.0
    var discountPercentage = 0.0
    var finalPrice = 0.0

    // Prompt the user to enter the original price
    print("Enter the original price: ")
    originalPrice = readLine()?.toDoubleOrNull() ?: 0.0

    // Prompt the user to enter the discount percentage as a decimal between 0 and 1
    print("Enter the discount percentage (as a decimal between 0 and 1): ")
    discountPercentage = readLine()?.toDoubleOrNull() ?: 0.0

    // Check if the discount is greater than the threshold (e.g., 50%)
    val threshold = 0.5
    if (discountPercentage > threshold) {
        println("The discount is too high. Setting the discount to the threshold value of ${threshold * 100}%")
        discountPercentage = threshold
    }

    // Calculate the final price after discount
    finalPrice = originalPrice * (1 - discountPercentage)

    // Print the original price, discount percentage, and final price
    println("Original Price: $originalPrice")
    println("Discount Percentage: ${discountPercentage * 100}%")
    println("Final Price: $finalPrice")
}