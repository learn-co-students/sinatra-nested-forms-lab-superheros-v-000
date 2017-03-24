class Member
  MEMBERS = []
  attr_accessor :name, :power, :biography

  def initialize(name, power, biography)
     @name = name
     @power = power
     @biography = biography
     MEMBERS << self
  end

  def self.all
    MEMBERS
  end
end
