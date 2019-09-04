class SuperHero
  attr_accessor :name, :power, :bio

  @@super_heroes = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@super_heroes << self
  end

  def self.all
    @@super_heroes
  end

end
