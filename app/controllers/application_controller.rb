require './config/environment'
require 'sinatra/base'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") } #needs this since not app.rb in the root

  get '/' do
    erb :super_hero
  end

  post '/team' do
    @heronames=[] #empty arrays to be filled with params for the 3 heroes
    @heropowers=[]
    @herobios=[]
    @teamname=params[:team][:name] #params tags from rspec, have to match
    @teammotto=params[:team][:motto]

    @teammembers=params[:team][:members]
        @teammembers.each do |member|
          @heronames << member[:name]
          @heropowers << member[:power]
          @herobios << member[:bio]
        end

  erb :team
  end
end
