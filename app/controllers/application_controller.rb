require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = SuperheroTeam.new(params[:team][:name], params[:team][:motto])
      params[:team][:member].each do |member_stats|
        member = Superhero.new({name: member_stats[:name], power: member_stats[:power], bio: member_stats[:bio]})
      end
      erb :team
    end

end
