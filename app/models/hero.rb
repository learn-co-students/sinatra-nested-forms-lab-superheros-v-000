class Hero
  attr_accessor :name, :power, :bio

  HERO = Array.new

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    HERO << self
  end

  def self.all
    HERO
  end
end
