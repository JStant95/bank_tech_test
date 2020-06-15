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
    statement = "date || credit || debit || balance\n"
    @statement_rows.reverse_each do |row|
      if @statement_rows.first != row
        statement += row + "\n"
      else
        statement += row
      end
    end
    statement
  end
end
