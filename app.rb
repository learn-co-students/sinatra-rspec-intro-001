require './config/environment'
require 'pry'

class TestApp < Sinatra::Base
  #put your route handlers here

  get '/' do
  end

  post '/' do
  end
  
  get '/hello' do
  	@name = params[:name]
  #  binding.pry
  	erb :hello
  end

  get '/about' do
  	erb :about
   # binding.pry
  end
end
