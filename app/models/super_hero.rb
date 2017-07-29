class SuperHero
  attr_accessor :name, :power, :bio

  SUPER_HEROES = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    SUPER_HEROES << self
    self.save
  end

  def self.all
    SUPER_HEROES
  end

  def save
  self.class.all << self
end
end
