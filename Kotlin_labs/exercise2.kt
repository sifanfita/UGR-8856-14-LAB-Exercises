fun main() {
    // Prompt the user to enter the distance value
    print("Enter the distance value: ")
    val distance = readLine()?.toDoubleOrNull() ?: 0.0

    // Prompt the user to enter the unit
    print("Enter the unit (e.g., kilometers, miles): ")
    val unit = readLine()?.trim() ?: ""

    // Prompt the user to enter the conversion unit
    print("Enter the conversion unit (e.g., kilometers, miles): ")
    val conversionUnit = readLine()?.trim() ?: ""

    // Convert and print the distance
    val convertedDistance = convertDistance(distance, unit, conversionUnit)
    println("$distance $unit is equal to $convertedDistance $conversionUnit.")
}

fun convertDistance(distance: Double, unit: String, conversionUnit: String): Double {
    return when {
        unit.equals("kilometers", ignoreCase = true) && conversionUnit.equals("miles", ignoreCase = true) -> {
            convertToMiles(distance)
        }
        unit.equals("kilometers", ignoreCase = true) && conversionUnit.equals("meters", ignoreCase = true) -> {
            convertToMeters(distance)
        }
        else -> {
            println("Unsupported conversion.")
            0.0
        }
    }
}

fun convertToMiles(kilometers: Double): Double {
    // Conversion factor from kilometers to miles
    val conversionFactor = 0.621371

    // Convert kilometers to miles
    return kilometers * conversionFactor
}

fun convertToMeters(kilometers: Double): Double {
    // Conversion factor from kilometers to meters
    val conversionFactor = 1000.0

    // Convert kilometers to meters
    return kilometers * conversionFactor
}