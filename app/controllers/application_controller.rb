require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
       erb :super_hero 
    end
    
    post '/teams' do 
        @team_name = params[:team][:name]
        @team_motto = params[:team][:motto]

        @superhero_name = [] 
        @superhero_power = []
        @superhero_bio = []
    
        @superheroes = params[:team][:superheroes]
        @superheroes.each do |hero_info|
            @superhero_name << hero_info[:name]
            @superhero_power << hero_info[:power]
            @superhero_bio << hero_info[:bio]
        end
    
        erb :team
    end

end