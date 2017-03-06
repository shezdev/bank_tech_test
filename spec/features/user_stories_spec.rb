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
end
