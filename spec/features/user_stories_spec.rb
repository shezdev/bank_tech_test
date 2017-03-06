describe "User stories" do
  # As a user
  # So that I can keep my money somewhere safe
  # I'd like to open a bank account
 it "so a user can keep their money safe, open a bank account" do
   bankAccount = BankAccount.new
   expect { bankAccount }.not_to raise_error
 end

end
