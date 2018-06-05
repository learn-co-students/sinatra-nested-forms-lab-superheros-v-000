class SuperHero
  attr_accessor :name, :bio, :power

  SUPERHEROES = []

  def initialize(params)
    @name = params[:name]
    @bio = params[:bio]
    @power = params[:power]
    SUPERHEROES << self
  end

  def self.all
    SUPERHEROES
  end

end
