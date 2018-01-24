require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :team
    end
    
    post '/team' do 
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @super_heros=[]
      params[:team][:members].each do |super_hero|
        @super_heros << Heros.new(super_hero)
      end
      erb :super_hero 
    end


end
