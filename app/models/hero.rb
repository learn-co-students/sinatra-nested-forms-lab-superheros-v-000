class Hero
attr_accessor :name, :power, :bio

  @@heros = []

  def initialize(hero)
    @name = hero[:name]
    @power = hero[:power]
    @bio = hero[:bio]
    @@heros << self
  end


  def self.all
    @@heros
  end

  def self.clear
    @@heros = []
  end



end