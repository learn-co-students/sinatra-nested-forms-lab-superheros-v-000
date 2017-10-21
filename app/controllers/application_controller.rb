require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do

      @team = Team.new(params[:team])

       params[:team][:members].each do |hero_info|
         Member.new(hero_info)
       end

      @members = Member.all

      erb :team
    end

end
