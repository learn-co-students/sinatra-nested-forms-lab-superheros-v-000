require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :'/super_hero'
    end

get '/teams' do
  erb :'super_hero'
end

post '/teams' do
  @team = Team.new(params[:team])
  params[:team][:super_heroes].each do |details|
    SuperHero.new(details)
  end
  @super_heroes = Super_hero.all
  erb :'/team'
end
end

# <% @team_members.each.with_index do |hero, index| %>
#   <h2>Hero Name: <%= @hero_name[index] %></h2>
#   <p>
#     Hero power: <%= @hero_power[index] %>
#     <br>
#     Hero biography: <%= @hero_bio[index] %>
#   </p>
# <% end %>
