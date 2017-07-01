require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team][:name], params[:team][:motto])

      @heroes_details = params[:team][:members]
      @heroes = @heroes_details.collect do |details|
        Hero.new(details)
      end
      # @hero1_name = params[:team][:members][0][:name]
      # @hero1_power = params[:team][:members][0][:power]
      # @hero1_bio = params[:team][:members][0][:bio]

      erb :team
    end



end
