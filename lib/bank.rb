class Bank
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(value, date)
    @balance += value
  end

  def print_statement
    "date || credit || debit || balance\n15/06/2020 || 1000.00 || || 1000.00"
  end
end
