class Transaction
attr_reader :date, :credit, :debit, :balance


  def initialize(details)
    @date = details[:date]
    @credit = details[:credit]
    @debit = details[:debit]
    @balance = details[:balance]
  end

end
