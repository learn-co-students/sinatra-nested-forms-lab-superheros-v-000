require 'pry'
class Team

attr_accessor :name, :motto, :member

  TEAMS =[]
  def initialize(params)
 
    @name = params[:team][:name]
    @motto = params[:team][:motto]
    TEAMS << self
  end 

end 