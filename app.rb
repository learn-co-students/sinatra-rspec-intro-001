require 'sinatra'

class TestApp < Sinatra::Base
  get '/' do
  end

  post '/' do
  end

  get '/about' do
    erb :about
  end

  get '/hello/?:name?' do
    if params[:name].nil?
      erb:hello
    else
      @name = params[:name]
      erb :hello
    end
  end

end
