require 'sinatra/base'
require_relative '../models/member.rb'
require_relative '../models/team.rb'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  get '/teams' do
    erb :team
  end

  post '/teams' do

    @team = Team.new(params[:team])

    params[:team][:members].collect do |hash|
      Member.new(hash)
    end

    @members = Member.all

    erb :team
  end
end
