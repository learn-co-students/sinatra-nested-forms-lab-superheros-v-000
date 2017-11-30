require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

       params[:team][:members].each do |member|
        Hero.new(member)
      end

    @team = Team.new(params[:team])

    Hero.all.each do |hero_obj|
      hero_obj.team = @team
    end

    @team.members = Hero.all

    # make heroes array
    @heroes = Hero.all
      erb :team
    end

end
