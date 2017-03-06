require "bankAccount"

describe BankAccount do
  describe "::new" do
    subject { BankAccount.new }

    it "creates a new bank account" do
      expect(subject).to be_instance_of(BankAccount)
    end
  end
end
