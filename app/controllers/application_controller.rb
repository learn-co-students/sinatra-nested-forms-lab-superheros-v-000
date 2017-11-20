require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }


    get '/' do
    	render superhero form 
    	erb :super_hero
    end 

    post '/teams' do
    	submits the form 
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
