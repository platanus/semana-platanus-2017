require "spec_helper"

RSpec.describe Minas do 
	let(:map) {
		"4 3
*...
..*.
...."
	}
	let(:instance) { described_class.new(map) }

	describe "#" do 
		it "has the field loaded as a matrix" do 
			expect(instance.field.size).to eq(instance.height)
			expect(instance.field[0].size).to eq(instance.width)
		end

		it "should print the number matrix" do 
			instance.perform
		end		
	end
end