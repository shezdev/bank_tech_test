require "transaction"

describe Transaction do
  describe "::new" do
    txn = {date: "01/01/2012", credit: 100, debit: 0, balance: 100}
    subject { Transaction.new(txn) }

    it "creates a new transaction" do
      expect(subject).to be_instance_of(Transaction)
    end

    context "When a new transaction is initialized" do

      it "has a date value of 01/01/2012" do
        expect(subject.date).to eq("01/01/2012")
      end
      it "has a credit value of 100" do
        expect(subject.credit).to eq(100)
      end
      it "has a debit value of 0" do
        expect(subject.debit).to eq(0)
      end
      it "has a balance value of 100" do
        expect(subject.balance).to eq(100)
      end
    end

  end
end
