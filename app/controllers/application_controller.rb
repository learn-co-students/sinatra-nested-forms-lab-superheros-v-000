require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do

    # make heroes
    params[:team][:members].each do |hero_info|
      Hero.new(hero_info)
    end

    # make team
    @team = Team.new(params[:team])

    # give each hero a team association
    Hero.all.each do |hero_obj|
      hero_obj.team = @team
    end

    # Giving the team#members info on the heroes where each one also has the associated team
    @team.members = Hero.all

    # make heroes array
    @heroes = Hero.all

    erb :team
  end


end
