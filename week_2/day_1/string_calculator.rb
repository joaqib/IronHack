
class StringCalculator
  def add(number1)
    arr = number1.split(",")
    arr.inject(0) {|sum,number| sum + number.to_i}
  end

end
