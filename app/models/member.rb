class Member

  @@all = []

  attr_accessor :name, :power, :bio

  def initialize(name = nil, power = nil, bio = nil)
    @name = name
    @power = power
    @bio = bio
  end

  def self.all
    @all
  end

end
