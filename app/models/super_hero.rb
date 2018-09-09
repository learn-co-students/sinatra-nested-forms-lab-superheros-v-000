class SuperHero

  attr_accessor :name, :bio, :power
  @@all = []

  def initialize(params)
    @name = params[:name]
    @bio = params[:bio]
    @power = params[:power]
    @@all << self
  end

  def self.all
    @@all
  end

end
