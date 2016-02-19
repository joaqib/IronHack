require "./string_calculator"
RSpec.describe "String Calculator" do
  before :each do
    @calculator = StringCalculator.new
  end
  it "returns 0 for the empty string" do
    expect(@calculator.add("")).to eq(0)
  end

  it "retuns 3 for that number" do
    expect(@calculator.add("3")).to eq(3)
  end

  it "returns 4 for this string of number" do
    expect(@calculator.add("1,2,1")).to eq(4)
  end
end
