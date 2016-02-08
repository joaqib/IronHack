require "ruby-dictionary"
class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(from,to)
        array_from = from.split(//)        
        i = 0
        begin
            number = Random.new
            number.rand(from.length)
            i = number.rand(from.length)
            array_from[i] = to.split(//)[i]

        end until @dictionary.exists?(array_from.join)

        puts array_from.join

        find_chain(array_from.join, to) unless array_from.join == to
    end
end


dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)
my_chain.find_chain("ruby", "code")


