require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do 
    erb :'../views/new'
  end 
  
  post '/teams' do 
    
    @team = Team.new(params[:team])
    params[:team][:members].each do |member|
      Hero.new(member)
    end 
    @heros = Hero.all 
    erb :'../views/teams'
  end 
  

end
