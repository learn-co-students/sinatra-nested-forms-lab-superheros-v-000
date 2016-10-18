require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../../views/") }

    get '/' do
        erb :teams
    end

    post '/teams' do
        @team = Team.new(params["team"])

        params["team"]["members"].each do |hero|
            Hero.new(hero)
        end

        @heroes = Hero.all
        erb :result
    end
end
