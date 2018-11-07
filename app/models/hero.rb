class Hero
  attr_accessor :name, :power, :bio
  ALL = []

  def self.all
    ALL
  end

  def initialize(hash)
    @name = hash[:name]
    @power = hash[:power]
    @bio = hash[:bio]
    ALL << self
  end
end
