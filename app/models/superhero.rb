class Superhero
  attr_reader :name, :power, :biography

  @@superheroes = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    @@superheroes << self
  end

  def self.superheroes 
    @@superheroes
  end
end