require './config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/teams' do

  erb :team
  end
end
