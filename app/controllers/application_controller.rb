require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/team' do
    @team = Team.new(params[:team][:name], params[:team][:motto])
    @hero1 = SuperHero.new(params[:team][:heros][0][:name], params[:team][:heros][0][:power], params[:team][:heros][0][:biography])
    @hero2 = SuperHero.new(params[:team][:heros][1][:name], params[:team][:heros][1][:power], params[:team][:heros][1][:biography])
    @hero3 = SuperHero.new(params[:team][:heros][2][:name], params[:team][:heros][2][:power], params[:team][:heros][2][:biography])


    erb :team
  end

end
