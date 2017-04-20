require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get '/' do
  erb :super_hero
end

post '/teams' do
#@team will create a new instance of Team class and later in team.rb will display them
@team = Team.new(params[:team])
params[:team][:members].each{|member|
 Hero.new(member)}
# binding.pry
@heroes = Hero.all
 erb :team
end
end
