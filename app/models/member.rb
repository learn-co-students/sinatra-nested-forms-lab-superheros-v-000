require 'pry'

class Member
  attr_reader :name, :power, :biography

  MEMBERS=[]

  def initialize(params)
    # binding.pry
    @name=params[:name]
    @power=params[:power]
    @biography=params[:biography]
    
    MEMBERS << self
    
  end

  def self.all 
    MEMBERS
  end

  def self.clear
    MEMBERS.clear
  end

end