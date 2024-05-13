fun generateRandomPassword(length: Int): String {
    val characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()"
    val password = StringBuilder()

    repeat(length) {
        val randomIndex = (0 until characters.length).random()
        val randomChar = characters[randomIndex]
        password.append(randomChar)
    }

    return password.toString()
}

fun main() {
    val passwordLength = 8

    val randomPassword = generateRandomPassword(passwordLength)
    println("Generated Password: $randomPassword")
}