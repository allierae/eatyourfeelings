require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/quiz' do
    erb :quiz
  end 
  
  get '/results' do
    erb :results
  end 

end