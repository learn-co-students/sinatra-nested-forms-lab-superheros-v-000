require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team])

    params[:team][:members].each do |member|
      Hero.new(member)
    end

    @heroes = Hero.all
    erb :team
  end
  
end
