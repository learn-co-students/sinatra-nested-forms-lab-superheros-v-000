require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:hero]
     @heros = members.collect do |h_params|
       Hero.new({name: h_params[:name], power: h_params[:power], bio: h_params[:bio]})
     end
     #binding.pry
      erb :team
    end

end
