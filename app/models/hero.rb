class Hero
  attr_accessor :name, :power, :bio

  @@heroes = []

  def initialize(attr)
    @name = attr[:name]
    @power = attr[:power]
    @bio = attr[:bio]
    @@heroes << self
  end

  class << self
    def all
      @@heroes
    end

    def clear
      @@heroes.clear
    end
  end
end
