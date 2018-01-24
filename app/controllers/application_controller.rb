require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/team' do
      @new_team = Team.new(params[:team])

      params[:team][:member].each do |member_hash|
        Hero.new(member_hash)
      end

      @heros = Hero.all

      erb :team
    end


end

# post '/pirates' do
#       @new_pirate = Pirate.new(params[:pirate])

#       params[:pirate][:ships].each do |ship_hash|
        
#           Ship.new(ship_hash)  
#       end
#       @Ships = Ship.all
#       erb :pirates
#     end