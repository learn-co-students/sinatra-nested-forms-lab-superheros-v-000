class Hero
  attr_reader :name, :power, :bio

  HEROES = []
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    HEROES << self
  end

  def self.all 
    HEROES
  end
end