require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    # get '/team' do
   #   erb :team
   # end

   post "/teams" do
         @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
         members = params[:team][:members]
         @members = members.collect do |member_params|
           Member.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
         end
         erb :team
       end

#     post '/teams' do
#       @team = Team.new(params)
#       params[:team][:members].each do |details|
#         Member.new(details)
#       end
#       @members = Member.all
#       erb :team
#
# end

end
