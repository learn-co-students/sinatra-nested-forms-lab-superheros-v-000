require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      #build a team object and save it as an instance variable
      @team = Team.new(params[:team])

      # iterate through the superheros and make a superhero object for each one
      params[:team][:members].each do |member|
        Superhero.new(member)
      end
      # pass all the superheros to team as an instance variable
      @members = Superhero.all

      erb :team
    end
end
