require_relative 'transactionLog'

class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = TransactionLog.new
  end

  def deposit(amount, date)
    add_balance(amount)
    transaction = {date: date, credit: amount, debit: 0, balance: @balance}
    update_log(transaction)
  end

  def withdraw(amount, date)
    raise insufficient_funds_msg if @balance == 0
    minus_balance(amount)
    transaction = {date: date, credit: 0, debit: amount, balance: @balance}
    update_log(transaction)
  end

private

def insufficient_funds_msg
  "Withdrawal denied: insufficient funds"
end

def add_balance(amount)
  @balance =+ amount
end

def minus_balance(amount)
  # add guard clause
  @balance -= amount
end

def update_log(transaction)
  @transactions.record(transaction)
end

end
