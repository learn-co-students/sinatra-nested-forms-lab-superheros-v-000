class Hero
  attr_accessor :name, :power, :biography

  @@heroes = []

  def initialize(args)
    # args = {"name"=>"1", "power"=>"1power", "biography"=>"1bio"}
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]

    @@heroes << self
  end

  def self.all
    @@heroes
  end

  def self.clear
    @@heroes = []
  end

end