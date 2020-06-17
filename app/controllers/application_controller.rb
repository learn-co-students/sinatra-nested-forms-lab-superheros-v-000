require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team][:name], params[:team][:motto])
    params[:team][:member].each {|hero| Member.new(hero)}
    @hero = Member.all
    binding.pry
    erb :team
  end

end
