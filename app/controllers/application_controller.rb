require 'sinatra/base'
require_relative '../models/hero.rb'
require_relative '../models/team.rb'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do

      erb :form
    end

    post '/teams' do

      @team = Team.new(params[:team])

      params[:team][:member].each do |member_data|
        Hero.new(member_data)
      end

      @members = Hero.all

      erb :team
    end




end
