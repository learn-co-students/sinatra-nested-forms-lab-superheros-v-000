require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team])
    @member_1 = Member.new(params[:team][:members][0])
    @member_2 = Member.new(params[:team][:members][1])
    @member_3 = Member.new(params[:team][:members][2])
    erb :team
  end
end
