class Hero
  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(hash)
    self.name = hash[:name]
    self.power = hash[:power]
    self.bio = hash[:bio]

    @@all << self
  end

  def self.all
    @@all
  end
end
