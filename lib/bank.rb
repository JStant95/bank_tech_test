class Bank
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(value, date)
    @balance += value
  end
end