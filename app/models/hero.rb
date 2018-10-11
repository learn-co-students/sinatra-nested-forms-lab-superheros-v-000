class Hero
  attr_reader :name, :power, :biography

 HERO = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    HERO << self
  end

  def self.all
    HERO
  end

end
