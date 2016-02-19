require "pry"
require 'imdb'
class ImdbWrapper
  attr_reader :a
  def search_movies(term)
    @a = Imdb::Search.new(term)
  end
  def array_movies
    @a.movies
  end
end

class MovieSorter
  def initialize(imdb)
    @imdb = imdb
    @movies = []
  end
  def search_term(term)
    @imdb.search_movies(term)
  end
  def check_movies
    number_of_tries = 0
    while @movies.length < 9

      if @imdb.array_movies[number_of_tries].poster.class == String 
        @movies << [@imdb.array_movies[number_of_tries].title, @imdb.array_movies[number_of_tries].poster, @imdb.array_movies[number_of_tries].year]
      end

      number_of_tries += 1
    end
    @movies
  end
  def give_me_movies(term)
    search_term(term)
    check_movies
  end
end

# class Quizz
#   def question(movies)
#     years = movies
#     year = years.sample
#     year[2]
#     # yearofmovies = movies
#     # yearofmovies.map! {|movie| movie[2]}
#     # yearsofmovies.sample
#   end
# end

i = ImdbWrapper.new
h = MovieSorter.new(i)
h.search_term("happy")
h.check_movies
