class Hero
  attr_accessor :name, :power, :biography

  @@heros = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    @@heros << self
  end

  def self.all
    @@heros
  end
end