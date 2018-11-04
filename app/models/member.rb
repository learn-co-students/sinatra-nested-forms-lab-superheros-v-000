class Member
  attr_accessor :name, :power, :biography
  @@all = []

  # def initialize(name:, power:, biography:)
  #   @name = name
  #   @power = power
  #   @biography = biography
  #   @@all << self
  # end

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.all
    @@all
  end
end