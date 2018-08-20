require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do 
        erb :super_hero
    end
    
    post "/team" do

        params[:team][:heroes].map! do |hero_data| 
            h = Hero.new
            hero_data.each do |k,v|
                h.send("#{k}=",v)
            end
            h
        end
        @team = Team.new
        params[:team].each{ |k,v| @team.send("#{k}=",v)}
        erb :team
    end
end
