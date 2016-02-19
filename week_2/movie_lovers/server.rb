require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative  "./lib/movie_lovers"

i = ImdbWrapper.new
moviesorter = MovieSorter.new(i)

get "/" do
  erb(:home)
end

post "/moviequizz" do
  @topic = params[:topic]
  @movies = moviesorter.give_me_movies(@topic)
  r = Random.new
  @randomindex = r.rand(8)

  erb(:details)
end

get "/correct" do
  erb(:correct_view)
end

get "/incorrect" do
  erb(:incorrect_view)
end