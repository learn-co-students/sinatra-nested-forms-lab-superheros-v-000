require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

 # when user get to our page... Line 8 route fires.
 get '/' do
    erb :super_hero
 end

 post '/teams' do
  @team = Team.new(params[:team])

  params[:hero].each do |info|
    #we create hero inside
    #we collect the name, power,bio into
  @hero = Hero.new(info)
end
    @heros= Hero.all
# we have the super hero and there features here..
# we go into teams.rb and iterate over it on line 9.
# to get each hero informations as needed

    erb :teams
 end

end
