require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero  #views is located within this folder set
    end
    post '/teams'  do
#binding.pry
      #create a team
      @team = Team.new(params[:team])
      #create members
      params[:team][:members].each do |member_hash|
          Hero.new(member_hash)
      end
      @heros = Hero.all #class method Class.all given with inheritting Sinatra::Base. Set the variable so it can be used in the views

      erb :team
    end

end



#@team = Team.new(params[:team])
#
#params[:team][:members].each do |details|
#Hero.new(details)
#end
#
#@heros = Hero.all
#erb :team
