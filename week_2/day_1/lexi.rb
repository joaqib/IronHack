require "pry"
class Lexiconomitron
  def eat_t(string)
    arr = string.downcase.split(//)
    arr.delete("t")
    arr.join
  end
  def shazam(array)
    first = array[0]
    last = array[array.length - 1]
    sha = [eat_t(first.reverse), eat_t(last.reverse)]
    sha
  end
  def ommpa(array)
    omp = array.select {|word| word.length <= 3}
    omp.each {|word| eat_t(word)}      
    
  end
end

l = Lexiconomitron.new
l.shazam(["This", "is", "a", "boring", "test"])