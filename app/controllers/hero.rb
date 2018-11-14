class Hero
  attr_accessor :name, :power, :bio

  @@heroes = []

  def initialize(attributes)
      attributes.each {|key, value| self.send(("#{key}="), value)}
      @@heroes << self
  end

  def self.all
    @@heroes
  end

  def self.clear
    @@heroes.clear
  end


end
