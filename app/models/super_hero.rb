class SuperHero
  attr_accessor :name, :power, :biography

SUPERHERO = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    SUPERHERO << self
  end

  def self.all
    SUPERHERO
  end
end
