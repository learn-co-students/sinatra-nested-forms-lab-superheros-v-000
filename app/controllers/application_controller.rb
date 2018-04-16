require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
  get '/' do
    erb :'index'
  end
  
  post '/teams' do
    @params = params
    @team = Team.new(params[:team][:name], params[:team][:motto])
    
    params[:team][:members].each do |details|
      Hero.new(details)
    end
    
    @heros = Hero.all
    
    erb :'team'
  end
end
