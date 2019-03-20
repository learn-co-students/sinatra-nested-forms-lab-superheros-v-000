require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


      get '/' do
        erb :index
      end

      post '/teams' do
          @team_name = []
          @team_motto = []
          @team_member = []

          @super_heroes = members.each do |members_params|
            end

          SuperHero.new(
          {name: member_params[:name],
          power: member_params[:power],
          bio: member_params[:bio]}
          )

        end

        erb :team
  
  end
