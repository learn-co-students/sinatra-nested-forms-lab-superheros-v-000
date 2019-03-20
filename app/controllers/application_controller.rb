require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
        erb :super_hero
    end

    post '/teams' do
      # binding.pry
        @team_name = []
        @team_motto = []
        # @team_member = []

        @hero_name = []
        @ero_power = []
        @hero_bio = []

        @heroes = members.each do |member_params|


        Hero.new(
        {name: member_params[:name],
        power: member_params[:power],
        bio: member_params[:bio]}
          )

      end

      erb :team

    end


end
