require "bankAccount"

describe BankAccount do
  describe "::new" do
    subject { BankAccount.new }

    it "creates a new bank account" do
      expect(subject).to be_instance_of(BankAccount)
    end

    it "has a default balance of 0" do
      expect(subject.balance).to eq(0)
    end
  end

  describe "#deposit" do
    let(:deposit_amount) { 100 }
    let(:deposit_date) { "14/01/2012" }
    context "when invoked with an amount and a date as the arguments" do
      it "increases balance by deposit value" do
       expect{ subject.deposit(deposit_amount, deposit_date) }.to change{ subject.balance }.by 100
      end
    end
  end






end
