
class Hero
  attr_accessor :name, :bio, :power
  
  @@members = []
  
  def initialize(params)
    @name = params[:name]
    @bio = params[:bio]
    @power = params[:power]
    @@members << self
  end 
  
  def self.all 
    @@members
  end 
  
end 
