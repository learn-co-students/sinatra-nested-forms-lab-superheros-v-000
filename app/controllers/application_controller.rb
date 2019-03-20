require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
        erb :super_hero
    end

    post '/teams' do
      # binding.pry

        @team_name = params[:team][:name]
        @team_motto = params[:team][:name]
        # @team_member = []

        @hero_name = []
        @hero_power = []
        @hero_bio = []

        @team_members = params[:team][:members]
        @team_members.each do|hero|

        @hero_name << hero[:name]
        @hero_power << hero[:power]
        @hero_bio <<hero[:bio]

        # @heroes = members.each do |member_params|This is wrong


        #
        # Hero.new(
        # {name: member_params[:name],
        # power: member_params[:power],
        # bio: member_params[:bio]}
        #   )

      end

      erb :team

    end

end
