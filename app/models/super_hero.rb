class SuperHero
  attr_accessor :name, :power, :biography

  SUPERHEROS = []

  def initialize(params)
    @name = params[:name]
    @power= params[:power]
    @biography= params[:biography]

    SUPERHEROS << self
  end

  def self.all
   SUPERHEROS
  end
end
