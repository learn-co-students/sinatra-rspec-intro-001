require './config/environment'
require 'pry'

class TestApp < Sinatra::Base
  #put your route handlers here
  get '/about' do
    erb :'/about'
  end

  get '/hello' do
    if params.keys.include?("name")
      @name = params["name"]
    else
      @name = nil
    end
    erb :'/hello'
  end

  get '/' do
  end

  post '/' do

  end
end
