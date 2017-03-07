require_relative 'transaction'
require_relative 'transactionLog'
require_relative 'statementPrinter'

class BankAccount
  attr_reader :balance, :log

  def initialize
    @balance = 0
    @log = TransactionLog.new
  end

  def deposit(amount, date)
    add_balance(amount)
    details = { date: date, credit: amount, debit: 0, balance: @balance }
    update_log(Transaction.new(details))
  end

  def withdraw(amount, date)
    raise insufficient_funds_msg if @balance == 0
      minus_balance(amount)
      details = { date: date, credit: 0, debit: amount, balance: @balance }
      update_log(Transaction.new(details))
  end

  def getStatement
    statement = StatementPrinter.new(@log.getTransactions).print
  end

private

def insufficient_funds_msg
  "Withdrawal denied: insufficient funds"
end

def add_balance(amount)
  @balance =+ amount
end

def minus_balance(amount)
  @balance -= amount
end

def update_log(transaction)
  @log.record(transaction)
end

end
