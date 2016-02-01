class Members

  attr_accessor :name, :power, :bio

  HEROES = []

  def initialize(name, power, bio)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    HEROES << self
  end

  def self.all
    HEROES
  end


end ## class end