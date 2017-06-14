class SuperHero
  attr_accessor :name, :power, :biography

  @@superheroes = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end

end
