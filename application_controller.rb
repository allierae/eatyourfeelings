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
  
  
  post '/quiz-results' do
    restaurants = Restaurants.new 
    restaurants.responses = params
    @results = restaurants.final_answer
    erb :results
  end  

end

