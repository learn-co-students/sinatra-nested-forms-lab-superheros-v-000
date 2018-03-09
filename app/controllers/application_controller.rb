require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :create_team_and_heroes
  end

  post '/team' do
    @team = params[:team]
    erb :team
  end

end
