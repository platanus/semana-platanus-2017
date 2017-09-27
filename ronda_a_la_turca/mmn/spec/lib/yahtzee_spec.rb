require "spec_helper"

describe Yahtzee do
  describe "#suerte" do
    it "sums the dice values" do
      expect(described_class.suerte([1, 2, 3, 4, 5])).to eq(15)
    end
  end

  describe "#yahtzee" do
    it "gives 50 points if all dice are the same" do
      expect(described_class.yahtzee([1, 1, 1, 1, 1])).to eq(50)
    end

    it "gives 0 points if dice are not the same" do
      expect(described_class.yahtzee([1, 2, 1, 1, 1])).to eq(0)
    end
  end

  describe "#cuadras" do
    it "counts 4" do
      expect(described_class.cuadras([1, 1, 2, 4, 4])).to eq(8)
      expect(described_class.cuadras([1, 1, 4, 4, 4])).to eq(12)
    end
  end

  describe "#tontos" do
    it "counts 2" do
      expect(described_class.tontos([2, 2, 1, 3, 3])).to eq(4)
    end
  end

  describe "#ases" do
    it "counts ases" do
      expect(described_class.ases([1, 1, 1, 2, 2])).to eq(3)
    end
  end

  describe "#pareja" do
    it "counts and sum parejas" do
      expect(described_class.parejas([3, 3, 3, 4, 4])).to eq(8)
      expect(described_class.parejas([1, 1, 6, 2, 6])).to eq(12)
    end
  end
end
