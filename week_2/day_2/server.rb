require "sinatra"
require "sinatra/reloader" if development?
enable(:sessions)

get "/session_test/:text" do
  text = params[:text]
  session[:saved_value] = text
end

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