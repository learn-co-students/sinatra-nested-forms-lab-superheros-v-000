require 'sinatra/base'
require 'pry'


class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do#posts #index action
     erb :super_hero
  end

  post '/teams' do #post show action
    @team = Team.new(params[:team])
    #binding.pry
    params[:team][:members].each do |details|
      Member.new(details)
    end
    @members = Member.all
    erb :team
  end

end
