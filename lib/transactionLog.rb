class TransactionLog
attr_reader :transactions

  def initialize()
    @transactions = []
  end

  def record(txn)
    @transactions << txn
  end

  def getTransactions
    @transactions
  end

end
