require "spec_helper"

describe Example do
  describe "#hi_monkey" do
    it "says hi" do
      expect(described_class.say_hi).to eq("Hello monkey")
    end
  end
end
