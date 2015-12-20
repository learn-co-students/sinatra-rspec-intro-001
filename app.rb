require './config/environment'

class TestApp < Sinatra::Base
  get '/' do
    # response OK
  end

  post '/' do
    # response OK
  end

  get '/about' do
    # response OK
    erb :about
  end

  get '/hello' do
    # response OK
    @name = params[:name]
    erb :hello
  end
end
