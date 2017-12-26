require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

get '/new' do
  erb :'views/super_hero'
end

post '/teams' do
  @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
members = params[:team][:members]
  end
  @super_heroes = members.collect do |details|
    SuperHero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
  erb :'views/team'
end
end
