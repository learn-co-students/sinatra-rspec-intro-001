require './config/environment'

class TestApp < Sinatra::Base

  get '/about' do
    template = File.read('./views/about.erb')
    ERB.new(template).result(binding)
  end

  get '/hello' do
    template = File.read('./views/hello.erb')
    @name = params[:name]
    ERB.new(template).result(binding)
  end

  get '/' do
  end

  post '/' do
  end

end