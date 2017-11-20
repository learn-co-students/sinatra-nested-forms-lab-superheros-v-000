require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
    	 
    	erb :super_hero
    end 


    post '/teams' do
    	team = Team.new[name: params[:team][:name], motto: params[:team][:motto]]   	
    		
    	params[:team][:members].each do |hero_data|
    		member = SuperHero.create(hero_data)
    		team.member = member
    		member.save
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
