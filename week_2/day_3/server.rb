require "sinatra"
require "sinatra/reloader" if development?
require "pry"
require_relative  "./lib/sinatra_todo"



get "/session_test" do
  session[:saved_value]
end

get "/users/:username" do
  @username = params[:username]
  erb(:author)
end

get "/foo" do
  status(418)
      
end

get "/" do
  @ingredients = ["cheese", "peperoni", "mushrooms"]
  erb(:pizza)
end

get "/fuck" do
  "FuckOff!!!"
end

get "/about" do
  "Your are talking to Joaqib fucker"
end