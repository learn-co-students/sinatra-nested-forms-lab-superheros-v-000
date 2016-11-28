require 'sinatra/base'
require "pry"
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get '/' do
erb :super_hero
end

post "/team" do
  @teams = Teams.new(params[:team])
 params[:team][:members].each do |details|
   Members.new(details)

 end

 @members = Members.all

erb :team
end

end
