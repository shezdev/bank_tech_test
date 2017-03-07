require "transactionLog"

describe TransactionLog do
  describe "::new" do
    subject { TransactionLog.new }

    it "creates a new transactionLog" do
      expect(subject).to be_instance_of(TransactionLog)
    end

    it "starts with an empty list of transactions" do
      expect(subject.transactions).to eq([])
    end
  end

  describe "#record" do
    context "when invoked with a transaction as an argument" do
      it "records a list of transactions" do
        allow(subject).to receive(:record).and_return({:date => "01/01/2012", :credit => 0, :debit => 10, :balance => 100})
        expect(subject.transactions).to include { {:date => "01/01/2012", :credit => 0, :debit => 10, :balance => 100} }
      end
    end
  end



end
