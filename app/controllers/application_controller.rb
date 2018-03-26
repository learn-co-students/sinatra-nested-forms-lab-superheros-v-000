require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :root
    end 

    post '/teams' do 
       @team = Team.new(params[:team])
       members = params[:team][:members]

       members.collect do |hero_info|
        Hero.new(hero_info)
       end

       @heroes = Hero.all 
        erb :team 
    end 
end
