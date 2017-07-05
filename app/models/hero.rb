class Hero
  attr_accessor :name, :power, :biography

  HEROS = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    HEROS << self
  end

  def self.all
    HEROS
  end



end
