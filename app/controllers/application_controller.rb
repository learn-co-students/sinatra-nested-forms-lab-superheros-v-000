require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @members = params[:team][:members].each do |details|
        Members.new(details)
      end
      @members = Members.all
      erb :team
    end
end

class Members

attr_accessor :name, :power, :bio
MEMBERS = []

def initialize(params)
  @name = params[:name]
  @power = params[:power]
  @bio = params[:bio]
  MEMBERS << self
end

def self.all
  MEMBERS
end

end