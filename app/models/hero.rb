class Hero
  attr_accessor :name,:power, :bio, :team
  @@all = []

  def initialize(hash)
    @name = hash[:name]
    @power = hash[:power]
    @bio = hash[:bio]

  end

  def self.all
    @@all

  end

end
