class Superhero
  attr_accessor :name, :power, :biography

  @@Superheroes = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]

    @@Superheroes << self
  end

  def self.all
    @@Superheroes
  end

  def self.clear
    @@Superheroes = []
  end

end
