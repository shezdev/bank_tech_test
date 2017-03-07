class StatementPrinter

  def initialize(log)
    @log = log
  end

  def print
    puts " date      | credit | debit | balance "
    puts "--------------------------------------"
    @log.each do |txn|
      # puts "#{txn[:date]} |   #{txn[:credit]}   |  #{txn[:debit]}  |  #{txn[:balance]}  "
      puts "#{txn.date} |   #{txn.credit}   |  #{txn.debit}  |  #{txn.balance}  "
    end
  end

end
