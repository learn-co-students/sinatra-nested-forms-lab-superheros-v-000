require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team_name = []
        @team_motto = []
        @team_member = []

        @hero_name = []
        @hero_power = []
        @hero_bio = []
        
        @super_heroes = members.each do |member_params|


        SuperHero.new(
        {name: member_params[:name],
        power: member_params[:power],
        bio: member_params[:bio]}
          )

      end

      erb :team


end
m


end
