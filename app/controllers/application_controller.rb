require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

   get '/' do
     erb :super_hero
   end

   post '/teams' do
     @hero_name = []
     @hero_power = []
     @hero_bio = []
     @team_name = params[:team][:name]
     @team_motto = params[:team][:motto]
     @team_members = params[:team][:members]
     @team_members.each do |m|
       @hero_name << m[:name]
       @hero_power << m[:power]
       @hero_bio << m[:bio]
     end
     erb :team
   end

end
