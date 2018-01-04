
require 'sinatra/base'

class App < Sinatra::Base

set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @hero_name = []
      @hero_power = []
      @hero_bio = []
      @team_members = params[:team][:members]
      @team_members.each_with_index do |hero, index|
        @hero_name << hero[:name]
        @hero_power << hero[:power]
        @hero_bio << hero[:bio]
      end

      # @members = params[:team][:members]
      # @super_heroes = members.collect do |member_params|
      #   SuperHero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
      # end
        binding.pry

      erb :team
      end
    end
