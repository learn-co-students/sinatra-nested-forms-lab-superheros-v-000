class SuperHero
  attr_accessor :name, :power, :bio

  @@superheroes = []

  def initialize (params)
    @name, @power, @bio = params[:name], params[:power], params[:bio]
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end

end
