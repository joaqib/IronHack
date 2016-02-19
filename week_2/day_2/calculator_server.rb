require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative "./lib/calculator"

get "/" do

end
get "/add" do
  erb(:add)
end

post "/calculate_add" do
  first = params[:firstnumber].to_f
  second = params[:secondnumber].to_f
  

end