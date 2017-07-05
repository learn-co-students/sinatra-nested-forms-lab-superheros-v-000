class Hero
  attr_accessor :name, :power, :bio

  HEROES = []

  def initialize(details)
    details.each {|key, value| self.send(("#{key}="), value)}
    HEROES << self
  end

  def self.all
    HEROES
  end

end
