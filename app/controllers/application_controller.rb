require './config/environment'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end 
		# post '/teams' do
		#     "Hello World"
		#   end

    post '/teams' do
    	
    	@team = Team.new(params[:team][:name], params[:team][:motto])
    	# (name: params[:team][:name], motto: params[:team][:motto])   	
    	


    	params[:team][:members].each do |hero_data|
    			binding.pry
    		@team.members << SuperHero.new(hero_data)

    	end 
    
    	erb :team
    end 

end 

 # Problems: can't figure out connections
 # Can't figure out Pry 

# team = 
#  {name=>
#   motto =>
	# members {
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
	# /	
#  }
