describe "User stories" do
  # As a user
  # So that I can keep my money somewhere safe
  # I'd like to open a bank account
 it "so a user can keep their money safe, open a bank account" do
  bankAccount = BankAccount.new
  expect { bankAccount }.not_to raise_error
 end

 # As a user
 # So that I know how much I can spend this month
 # I'd like to see my account balance
 it "so a user can check how much money they have, view the account balance" do
  bankAccount = BankAccount.new
  expect {bankAccount.balance}.not_to raise_error
 end

 # As a user
 # So that I can save money for a rainy day
 # I'd like to deposit some cash in my bank account
  it "so a user can save money, deposit some cash on a certain date" do
    bankAccount = BankAccount.new
    expect {bankAccount.deposit(100, "14/01/2012")}.not_to raise_error
  end

  # As a user
  # So that I can pay for my groceries
  # I'd like to withdraw some cash from my account
  it "so a user can purchase goods, withdraw some cash on a certain date" do
    bankAccount = BankAccount.new
    bankAccount.deposit(100, "14/01/2012")
    expect {bankAccount.withdraw(10, "15/01/2012")}.not_to raise_error
  end


end
