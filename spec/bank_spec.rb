require "bank"

describe Bank do
  before(:each) do
    @bank = Bank.new
  end

  context "User makes first deposit" do
    it "Adjusts bank balance accordingly" do
      @bank.deposit(1000, 15-06-2020)
      expect(@bank.balance).to eq(1000)
    end

    it "Reflects deposit on bank statement" do
      statement = "date || credit || debit || balance\n15/06/2020 || 1000.00 || || 1000.00"
      @bank.deposit(1000, 15-06-2020)
      expect(@bank.print_statement).to eq(statement)
    end
  end
end
