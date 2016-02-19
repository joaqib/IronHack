require 'sinatra'

get '/' do
  'hola'  
end

get '/real_page' do
  'hola'
end

get '/hi' do
  redirect '/real_page'
end