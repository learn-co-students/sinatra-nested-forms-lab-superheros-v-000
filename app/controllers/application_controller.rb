require 'sinatra/base'
# require_relative '../models/member.rb'
# require_relative '../models/team.rb'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  get '/teams' do
    erb :team
  end

  post '/teams' do

    # @team = Team.new(params[:team])
    #
    # params[:team][:members].each do |attribute|
    #   Member.new(attribute)
    #   @name = attribute[:name]
    #   @power = attribute[:power]
    #   @biography = attribute[:biography]
    # end
    #
    # @members = Member.all
    #
    erb :team
  end
end
