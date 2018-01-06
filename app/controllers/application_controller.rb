require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:members].each do |details|
        SuperHero.new(details)
      end
      @heros = SuperHero.all

      # @hero1_power = params[member1_power]
      # @hero1_bio = params[member1_bio]
      # @hero2_name = params[member2_name]
      # @hero2_power = params[member2_power]
      # @hero2_bio = params[member2_bio]
      # @hero3_name = params[member3_name]
      # @hero3_power = params[member3_power]
      # @hero3_bio = params[member3_bio]
      erb :team

    end


end
