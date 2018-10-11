require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end



      post '/teams' do
        @team = Team.new(params[:team])    #first create a new Team instance using the info stored in params[:team],
                                                   #which contains the team's name and motto
      params[:team][:hero].each do |info|  #we iterate over params[:team][:hero], an array containing a series of hashes
                                                    #that each store individual hero information:
        Hero.new(info)                         #Use info values passed into the .each block to create attributes within instances of our Hero class.
      end
        @heroes = Hero.all              #store the instantiated heroes in the instance variable @heroes so you can pass data to erb
      erb :student                                  #controller action loads the erb file team.erb, displays newly-created team and hero members
      erb :team
    end


end
