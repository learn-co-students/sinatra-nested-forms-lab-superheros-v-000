require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end 
		# post '/super_hero' do
		#     "Hello World"
		#   end

    post '/teams' do
    	team = Team.new(name: params[:team][:name], motto: params[:team][:motto])   	
    		
    	params[:team][members].each do |hero_data|
    		@hero = SuperHero.new(hero_data)
    		team.hero = hero
    	
    	end 
    	erb :team
    end 

end 

 

# team = 
#  {name=>
#   motto =>
#   member_1 {
#   	name =>
#   	power =>
#   	bio =>
#   }
#   member_2 {
#   	name =>
#   	power =>
#   	bio =>
#   }
#   member_3 {
#   	name =>
#   	power =>
#   	bio =>
#   }
#  }
