require "./fizzbuzz"

RSpec.describe "FizzBuzz" do
  before :each do
    @fizzbuzz = Fizzbuzz.new
  end
  it "returns 1 for 1" do
    expect(@fizzbuzz.tellme(1)).to eq(1)
  end
  it "returns 2 for 2" do
    expect(@fizzbuzz.tellme(2)).to eq(2)
  end
  it "returns Fizz for 3" do
    expect(@fizzbuzz.tellme(3)).to eq("Fizz")
  end
  it "returns Buzz for 5" do
    expect(@fizzbuzz.tellme(5)).to eq("Buzz")
  end
  it "returns Fizz for 6" do
    expect(@fizzbuzz.tellme(6)).to eq("Fizz")
  end
  it "returns FizzBuzz for 15" do
    expect(@fizzbuzz.tellme(15)).to eq("FizzBuzz")
  end
end
