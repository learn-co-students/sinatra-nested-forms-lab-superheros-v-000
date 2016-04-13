require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :index
    end

    get '/test' do
      "Hello World!"
    end

  end
end
