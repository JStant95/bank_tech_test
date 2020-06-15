require "bank"

describe Bank do
  before(:each) do
    @bank = Bank.new
  end

  context "User makes first deposit" do
    it "Adjusts bank balance accordingly" do
      @bank.deposit(1000, "15/06/2020")
      expect(@bank.balance).to eq(1000)
    end

    it "prints bank statement with deposit on" do
      @bank.deposit(1000, "15/06/2020")
      statement = "date || credit || debit || balance\n15/06/2020 || 1000.00 || || 1000.00"
      expect(@bank.print_statement).to eq(statement)
    end

    it "can print deposits of different values" do
      statement = "date || credit || debit || balance\n15/06/2020 || 2000.00 || || 2000.00"
      @bank.deposit(2000, "15/06/2020")
      expect(@bank.print_statement).to eq(statement)
    end
  end

  context "User makes second deposit" do
    before(:each) do
      @bank.deposit(1000, "15/06/2020")
      @bank.deposit(2000, "16/06/2020")
    end

    it "Adjusts bank balance accordingly" do
      expect(@bank.balance).to eq(3000)
    end

    it "Updates statement accordingly" do
      statement = "date || credit || debit || balance\n16/06/2020 || 2000.00 || || 3000.00\n15/06/2020 || 1000.00 || || 1000.00"
      expect(@bank.print_statement).to eq(statement)
    end
  end
end
