require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  post '/team' do
    @team = Team.new(params[:team])
    @members = params[:team][:members].collect do |member|
      Hero.new(member)
    end
    erb :team
  end

end
