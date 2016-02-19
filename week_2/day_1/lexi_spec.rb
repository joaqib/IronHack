require "./lexi"

RSpec.describe Lexiconomitron do 
  describe "#eat_t" do
    it "removes every letter t from the input" do
      @lexi = Lexiconomitron.new
      expect(@lexi.eat_t("great scott!")).to eq("grea sco!")
      end
    end

  describe "shazam" do
    it "it does shazam" do
      @lexi = Lexiconomitron.new
      expect(@lexi.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
    end
  end

  describe "Ommpa Lommpa" do
    it "takes words > 3 and takes out t" do
      @lexi = Lexiconomitron.new
      expect(@lexi.ommpa(["if", "you", "wanna", "be", "my", "lover"])).to eq(["if", "you", "be", "my"])
    end
  end
end