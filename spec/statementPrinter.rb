require "statementPrinter"

describe StatementPrinter do
  describe "::new" do
    subject { StatementPrinter.new }

    it "creates a new statement" do
      expect(subject).to be_instance_of(StatementPrinter)
    end

    it "starts with a transaction log object" do
      expect(subject.log).to be_a Object
    end
  end

  describe "#print" do
    it "prints the list of journeys" do      
      expect(subject.getStatement).to be_a Array
  end
end
