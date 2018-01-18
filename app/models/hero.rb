class Hero
  attr_accessor :name, :power, :bio

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
