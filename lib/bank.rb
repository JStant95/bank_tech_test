class Bank
  attr_reader :balance

  def initialize
    @balance = 0
    @statement_rows = []
  end

  def deposit(value, date)
    @balance += value
    @statement_rows.push("#{date} || #{value}.00 || || #{balance}.00")
  end

  def print_statement
    "date || credit || debit || balance\n#{@statement_rows[0]}"
  end
end
