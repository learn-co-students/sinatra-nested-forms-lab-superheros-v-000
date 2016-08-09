class Superhero
  attr_accessor :name, :power, :bio

  SUPERHERO = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    SUPERHERO << self
  end

  def self.all
    SUPERHERO
  end
end
