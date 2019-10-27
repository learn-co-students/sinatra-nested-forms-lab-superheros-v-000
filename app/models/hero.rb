class Hero

  attr_reader :name, :power, :bio

  @@all = []
  def initialize(members)
    @name = members[:name]
    @power = members[:power]
    @bio = members[:bio]
    @@all << self
  end

  def self.all
    @@all
  end
end
