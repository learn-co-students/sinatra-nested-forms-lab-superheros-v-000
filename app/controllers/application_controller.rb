require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @members = params[:team][:members]
      @hero_name = []
      @hero_power = []
      @hero_bio = []
      @members.each do |hero|
        @hero_name << hero[:name]
        @hero_power << hero[:power]
        @hero_bio << hero[:biography]
      end
      erb :team
    end
end

#another way

# <% @team_members.each.with_index do |hero, index| %>
#   <h2>Hero Name: <%= @hero_name[index] %></h2>
#   <p>
#     Hero power: <%= @hero_power[index] %>
#     <br>
#     Hero biography: <%= @hero_bio[index] %>
#   </p>
# <% end %>
