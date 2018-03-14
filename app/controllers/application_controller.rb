require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = {}
    @team[:name] = params[:team][:name]
    @team[:motto] = params[:team][:motto]
    @members = params[:team][:members]
    erb :team
  end

end
