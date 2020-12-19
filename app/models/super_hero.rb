class SuperHero
  attr_accessor :name, :power, :bio

  @@superheroes = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
  end

  def self.all
    @@superheroes
  end

end