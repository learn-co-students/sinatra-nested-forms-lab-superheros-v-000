class Superhero

  attr_accessor :name, :power, :biography

  SUPERHEROES = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    SUPERHEROES << self
  end

  def self.all
    SUPERHEROES
  end
end
