class SuperHero
  attr_accessor :name, :power, :bio

  Heroes = []
  def self.all
    Heroes
  end

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    self.save
  end

  def save
    Heroes << self
  end
end
