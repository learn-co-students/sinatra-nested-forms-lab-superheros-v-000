class Hero

  attr_accessor :name, :power, :bio

  @@members = []
  def initialize(hero)
    hero.each {|key, value| self.send("#{key}=", value)}
    @@members << self
  end

  def self.all
    @@members
  end

end
