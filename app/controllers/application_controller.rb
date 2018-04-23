require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }
  
	get '/' do
    erb :index
  end

	post '/teams' do
    @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    params[:team][:members].each do |details|
      SuperHero.new(details)
    end
    @super_heroes = SuperHero.all
    erb :team
  end
end