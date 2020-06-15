require "bank"

describe Bank do
  before(:each) do
    @bank = Bank.new
    @bank.deposit(1000, 15-06-2020)
  end

  context "User makes first deposit" do
    it "Adjusts bank balance accordingly" do
      expect(@bank.balance).to eq(1000)
    end
  end
end
