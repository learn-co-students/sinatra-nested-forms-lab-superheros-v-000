require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :team
  end

  post '/super_hero' do
    @team = params[:team]
    erb :super_hero
  end

end
