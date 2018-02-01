class Hero
  attr_accessor :name, :power, :bio
  @@heroes = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    self.save
  end

  def save
    @@heroes << self
  end

  def self.all
    @@heroes
  end
end
