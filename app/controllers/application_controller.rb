require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
      erb :super_hero
    end 
		# post '/super_hero' do
		#     "Hello World"
		#   end

    post '/super_hero' do
    	@team = Team.new(params[:team][:name], params[:team][:motto])
    	# (name: params[:team][:name], motto: params[:team][:motto])   	
    		
    	params[:team][:members].each do |hero_data|
    		@superhero = SuperHero.new(hero_data)

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
