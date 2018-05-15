#super_hero.erb is the form 
#team.erb is the show 


require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :team
    end 
    
    post '/teams' do
    @team = Team.new(params[:team])
    
    params[:team][:member].each do |details|
      Hero.new(details)
    end 
    
    @members = Hero.all 
    
    erb :super_hero
  end 


end
 