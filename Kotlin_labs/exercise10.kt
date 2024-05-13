class BankAccount(val accountNumber: String, var balance: Double) {
    fun deposit(amount: Double) {
        require(amount > 0) { "Deposit amount must be positive." }
        balance += amount
        println("Deposit of $amount successful. New balance: $balance")
    }

    fun withdraw(amount: Double) {
        require(amount > 0) { "Withdrawal amount must be positive." }
        if (balance >= amount) {
            balance -= amount
            println("Withdrawal of $amount successful. New balance: $balance")
        } else {
            println("Insufficient funds. Withdrawal failed.")
        }
    }

    fun printBalance() {
        println("Current balance: $balance")
    }
}

fun main() {
    // Prompt the user to enter the account number
    println("Enter the account number:")
    val accountNumber = readLine() ?: ""

    // Prompt the user to enter the initial balance
    println("Enter the initial balance:")
    val initialBalanceInput = readLine()
    val initialBalance = initialBalanceInput?.toDoubleOrNull() ?: 0.0

    val account = BankAccount(accountNumber, initialBalance)

    account.printBalance()

    // Prompt the user to make a deposit
    println("Enter the deposit amount:")
    val depositInput = readLine()
    val depositAmount = depositInput?.toDoubleOrNull() ?: 0.0
    account.deposit(depositAmount)

    // Prompt the user to make a withdrawal
    println("Enter the withdrawal amount:")
    val withdrawalInput = readLine()
    val withdrawalAmount = withdrawalInput?.toDoubleOrNull() ?: 0.0
    account.withdraw(withdrawalAmount)

    account.printBalance()
}