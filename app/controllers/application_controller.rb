require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
          end

    post '/teams' do
      @team = Team.new(params[:team])
      #  binding.pry
      params[:team][:members].each do |details|

        member = Member.new(details)
          # binding.pry
        end

      @members = Member.all
        erb :team

    end


end
