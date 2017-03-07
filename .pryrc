require './lib/bankAccount.rb'
require './lib/transactionLog.rb'
require './lib/statementPrinter.rb'

bc = BankAccount.new

bc.deposit(100, "01/01/2012")

bc.withdraw(10, "02/01/2012")

bc.getStatement
