class Hero
  attr_accessor :name, :power, :biography
  
  HEROS = []
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    HEROS << self
  end
  
  def self.all
    HEROS
  end
  
  def self.clear
    HEROS.clear
  end
  
end