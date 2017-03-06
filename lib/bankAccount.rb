class BankAccount
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount, date)
    @balance =+ amount
  end

  def withdraw(amount, date)
    @balance =- amount
  end

end
