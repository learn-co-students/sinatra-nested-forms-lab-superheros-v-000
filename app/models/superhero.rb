class SuperHero
  attr_accessor :name, :power, :bio

  @@superheroes = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    save
  end

  def self.superheroes
    @@superheroes
  end

  def save
    self.class.superheroes << self
  end
end
