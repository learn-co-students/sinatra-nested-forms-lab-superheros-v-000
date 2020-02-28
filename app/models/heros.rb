class Heros

  attr_accessor :name, :power, :bio

  @@all = []

  def initialize(data)
    @name = data[:name]
    @power = data[:power]
    @bio = data[:bio]
    @@all << self
  end

  def self.all
    @@all
  end
end
