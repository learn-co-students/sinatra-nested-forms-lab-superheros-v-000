require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


  get '/' do
    # binding.pry
    erb :super_hero
  end


  post '/teams' do
    # binding.pry
    @heroes = params["team"]["members"]
    erb :team

  end

end
