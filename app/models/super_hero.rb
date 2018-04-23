class SuperHero
  attr_accessor :name, :power, :bio

  SUPER_HERO = []

  def initialize(params)
    binding.pry
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    SUPER_HERO << self
  end

  def self.all
    SUPER_HERO
  end
  
end