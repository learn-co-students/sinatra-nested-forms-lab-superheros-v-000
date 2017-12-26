require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'super_hero'
    end

# get '/new' do
#   erb :'views/super_hero'
# end

post '/teams' do
  @team = Team.new(params[:team])
  params[:team][:super_heros].each do |details|
    SuperHero.new(details)
  end
  @super_heros = Super_hero.all
  erb :'/team'
end
end
