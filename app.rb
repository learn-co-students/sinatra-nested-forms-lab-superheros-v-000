require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
     erb :super_hero
    end

    post '/teams' do
 @team_name = params[:team][:name]
@team_motto = params[:team][:motto]
  @hero_name = []
  @hero_power = []
 @hero_bio = []
 @team_heros = params[:team][:members]
 @team_heros.each do |info|
@hero_name << info[:name]
@hero_power << info[:power]
@hero_bio << info[:bio]
  end
 erb :team
end
end
