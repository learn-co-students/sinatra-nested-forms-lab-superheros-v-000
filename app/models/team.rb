require 'pry'

class Team
  attr_reader :name, :motto
  
  TEAMS = []
  
  def initialize(params)
    @name = params[:team][:name]
    @motto = params[:team][:motto]
    TEAMS << self
  end
end