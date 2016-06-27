require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      # binding.pry 
      # # team_name = params[:team][:name]
      # hero_power = params[:team][:members][0][:power]
      # hero_power2 = params[:team][:members][1][:power]
      @team = Team.new(params[:team])
      params[:team][:members].each do |details|
        Hero.new(details)
      end 

      @hero = Hero.all
      # binding.pry
      
    erb :team

  end

end
