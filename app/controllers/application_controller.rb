require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/' do
      @team = Team.new(params[:team])
    
      params[:team][:members].each { |attributes|
        Member.new(attributes)
      }
      @members = Member.all
      erb :team
    end

end
