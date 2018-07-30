require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new_team
    end

    post '/team' do
        @team = Team.new(params[:team])

        params[:team][:members].each do |member_info|
            Superhero.new(member_info)
        end

        @members = Superhero.all
    #    binding.pry
       erb :team
    end
end
