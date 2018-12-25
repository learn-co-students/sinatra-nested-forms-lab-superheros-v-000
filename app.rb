require_relative: 'config/environment'

class App < Sinatra::Base 

  get '/' do
    erb :index
  end
  
  post '/teams' do 
    @team = Team.new(params[:team])
    
    params[:team][:heroes].each do |details|
      Hero.new(details)
    end
    
    @heroes = Hero.all 
    erb :'superheroes/results'
  end
end