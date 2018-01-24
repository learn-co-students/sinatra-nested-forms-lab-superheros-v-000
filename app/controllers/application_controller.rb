require 'sinatra/base'
require_relative '../models/member'
require_relative '../models/team'


class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
  	erb :super_hero
  end

  post '/teams' do
  	@team = Team.new(params[:team])
  	params[:team][:members].each { |m| Member.new(m) }
  	@members = Member.all
  	erb :teams
  end
end
