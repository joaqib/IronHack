require_relative "../lib/movie_lovers"
require "pry"

RSpec.describe ImbdWrapper do 
  describe "the module that gets the movies from IMDB"do
    it "get_movies gives us the movies" do
      a = ImbdWrapper.new
      expect(a.get_movies("happy")).to be_an(Array)
    end
    it "gives us a list of 9 movies"
      i = ImdbWrapper.new
      h = MovieSorter.new(i)
      h.search_term("happy")
      expect(h.check_movies).to eq(9)
  end
end
