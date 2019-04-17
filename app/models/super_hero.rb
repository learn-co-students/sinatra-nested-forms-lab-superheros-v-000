class SuperHero
  attr_accessor :name, :hero_power, :hero_biography

  SUPERHEROS = []

  def initialize(params)
    @name = params[:name]
    @hero_power= params[:hero_power]
    @hero_biography= params[:hero_biography]

    SUPERHEROS << self
  end

  def self.all
   SUPERHEROS
  end
end
