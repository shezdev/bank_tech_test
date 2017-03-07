class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount, date)
    @balance =+ amount
    @transactions << {date: date, credit: amount, debit: 0, balance: @balance}
  end

  def withdraw(amount, date)
    raise insufficient_funds_msg if @balance == 0
    @balance -= amount
    @transactions << {date: date, credit: 0, debit: amount, balance: @balance}
  end

private

def insufficient_funds_msg
  "Withdrawal denied: insufficient funds"
end


end
