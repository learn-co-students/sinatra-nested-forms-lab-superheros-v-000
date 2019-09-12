require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = Team.new(
            params[:team][:name],
            params[:team][:motto]
        )

        @team.members = params[:team][:members].collect do |member_data|
            Member.new(
                member_data[:name],
                member_data[:power],
                member_data[:bio]
            )
        end

        erb :team
    end
end
