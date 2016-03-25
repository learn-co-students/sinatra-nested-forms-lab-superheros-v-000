require 'sinatra/base'
require 'pry'
class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team])
    params[:team][:members].each do |h|
      Member.new(h)
    end
    binding.pry
    @hero = Member.all
    erb :team
  end
end
